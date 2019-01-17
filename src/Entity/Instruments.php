<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * Instruments
 *
 * @ORM\Table(name="instruments")
 * @ORM\Entity
 */
class Instruments
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var string|null
     *
     * @ORM\Column(name="name", type="string", length=300, nullable=true)
     */
    private $name;

    /**
     * @var string|null
     *
     * @ORM\Column(name="description", type="string", length=1000, nullable=true)
     */
    private $description;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="Indicators", inversedBy="instruments")
     * @ORM\JoinTable(name="instruments_has_indicators",
     *   joinColumns={
     *     @ORM\JoinColumn(name="instruments_id", referencedColumnName="id")
     *   },
     *   inverseJoinColumns={
     *     @ORM\JoinColumn(name="indicators_id", referencedColumnName="id")
     *   }
     * )
     */
    private $indicators;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="Techniques", mappedBy="instruments")
     */
    private $techniques;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->indicators = new \Doctrine\Common\Collections\ArrayCollection();
        $this->techniques = new \Doctrine\Common\Collections\ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(?string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(?string $description): self
    {
        $this->description = $description;

        return $this;
    }

    /**
     * @return Collection|Indicators[]
     */
    public function getIndicators(): Collection
    {
        return $this->indicators;
    }

    public function addIndicator(Indicators $indicator): self
    {
        if (!$this->indicators->contains($indicator)) {
            $this->indicators[] = $indicator;
        }

        return $this;
    }

    public function removeIndicator(Indicators $indicator): self
    {
        if ($this->indicators->contains($indicator)) {
            $this->indicators->removeElement($indicator);
        }

        return $this;
    }

    /**
     * @return Collection|Techniques[]
     */
    public function getTechniques(): Collection
    {
        return $this->techniques;
    }

    public function addTechnique(Techniques $technique): self
    {
        if (!$this->techniques->contains($technique)) {
            $this->techniques[] = $technique;
            $technique->addInstrument($this);
        }

        return $this;
    }

    public function removeTechnique(Techniques $technique): self
    {
        if ($this->techniques->contains($technique)) {
            $this->techniques->removeElement($technique);
            $technique->removeInstrument($this);
        }

        return $this;
    }

}
