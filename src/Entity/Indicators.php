<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * Indicators
 *
 * @ORM\Table(name="indicators", indexes={@ORM\Index(name="fk_n_category_indicators_idx", columns={"id_category_indicators"})})
 * @ORM\Entity
 */
class Indicators
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
     * @var \NCategoryIndicators
     *
     * @ORM\ManyToOne(targetEntity="NCategoryIndicators")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_category_indicators", referencedColumnName="id")
     * })
     */
    private $idCategoryIndicators;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="Instruments", mappedBy="indicators")
     */
    private $instruments;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="Techniques", mappedBy="indicators")
     */
    private $techniques;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->instruments = new \Doctrine\Common\Collections\ArrayCollection();
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

    public function getIdCategoryIndicators(): ?NCategoryIndicators
    {
        return $this->idCategoryIndicators;
    }

    public function setIdCategoryIndicators(?NCategoryIndicators $idCategoryIndicators): self
    {
        $this->idCategoryIndicators = $idCategoryIndicators;

        return $this;
    }

    /**
     * @return Collection|Instruments[]
     */
    public function getInstruments(): Collection
    {
        return $this->instruments;
    }

    public function addInstrument(Instruments $instrument): self
    {
        if (!$this->instruments->contains($instrument)) {
            $this->instruments[] = $instrument;
            $instrument->addIndicator($this);
        }

        return $this;
    }

    public function removeInstrument(Instruments $instrument): self
    {
        if ($this->instruments->contains($instrument)) {
            $this->instruments->removeElement($instrument);
            $instrument->removeIndicator($this);
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
            $technique->addIndicator($this);
        }

        return $this;
    }

    public function removeTechnique(Techniques $technique): self
    {
        if ($this->techniques->contains($technique)) {
            $this->techniques->removeElement($technique);
            $technique->removeIndicator($this);
        }

        return $this;
    }

}
