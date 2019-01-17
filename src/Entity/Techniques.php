<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * Techniques
 *
 * @ORM\Table(name="techniques", indexes={@ORM\Index(name="fk_n_category_techniques_idx", columns={"id_category_tech"})})
 * @ORM\Entity
 */
class Techniques
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
     * @var \NCategoryTechniques
     *
     * @ORM\ManyToOne(targetEntity="NCategoryTechniques")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_category_tech", referencedColumnName="id")
     * })
     */
    private $idCategoryTech;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="Indicators", inversedBy="techniques")
     * @ORM\JoinTable(name="techniques_has_indicators",
     *   joinColumns={
     *     @ORM\JoinColumn(name="techniques_id", referencedColumnName="id")
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
     * @ORM\ManyToMany(targetEntity="Instruments", inversedBy="techniques")
     * @ORM\JoinTable(name="techniques_has_instruments",
     *   joinColumns={
     *     @ORM\JoinColumn(name="techniques_id", referencedColumnName="id")
     *   },
     *   inverseJoinColumns={
     *     @ORM\JoinColumn(name="instruments_id", referencedColumnName="id")
     *   }
     * )
     */
    private $instruments;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="NCategoryIndicators", inversedBy="techniques")
     * @ORM\JoinTable(name="techniques_has_n_category_indicators",
     *   joinColumns={
     *     @ORM\JoinColumn(name="techniques_id", referencedColumnName="id")
     *   },
     *   inverseJoinColumns={
     *     @ORM\JoinColumn(name="n_category_indicators_id", referencedColumnName="id")
     *   }
     * )
     */
    private $nCategoryIndicators;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->indicators = new \Doctrine\Common\Collections\ArrayCollection();
        $this->instruments = new \Doctrine\Common\Collections\ArrayCollection();
        $this->nCategoryIndicators = new \Doctrine\Common\Collections\ArrayCollection();
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

    public function getIdCategoryTech(): ?NCategoryTechniques
    {
        return $this->idCategoryTech;
    }

    public function setIdCategoryTech(?NCategoryTechniques $idCategoryTech): self
    {
        $this->idCategoryTech = $idCategoryTech;

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
        }

        return $this;
    }

    public function removeInstrument(Instruments $instrument): self
    {
        if ($this->instruments->contains($instrument)) {
            $this->instruments->removeElement($instrument);
        }

        return $this;
    }

    /**
     * @return Collection|NCategoryIndicators[]
     */
    public function getNCategoryIndicators(): Collection
    {
        return $this->nCategoryIndicators;
    }

    public function addNCategoryIndicator(NCategoryIndicators $nCategoryIndicator): self
    {
        if (!$this->nCategoryIndicators->contains($nCategoryIndicator)) {
            $this->nCategoryIndicators[] = $nCategoryIndicator;
        }

        return $this;
    }

    public function removeNCategoryIndicator(NCategoryIndicators $nCategoryIndicator): self
    {
        if ($this->nCategoryIndicators->contains($nCategoryIndicator)) {
            $this->nCategoryIndicators->removeElement($nCategoryIndicator);
        }

        return $this;
    }

}
