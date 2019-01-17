<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * NCategoryTechniques
 *
 * @ORM\Table(name="n_category_techniques")
 * @ORM\Entity
 */
class NCategoryTechniques
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
     * @ORM\Column(name="name", type="string", length=100, nullable=true)
     */
    private $name;

    /**
     * @var string|null
     *
     * @ORM\Column(name="n_category_techniquescol", type="string", length=45, nullable=true)
     */
    private $nCategoryTechniquescol;

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

    public function getNCategoryTechniquescol(): ?string
    {
        return $this->nCategoryTechniquescol;
    }

    public function setNCategoryTechniquescol(?string $nCategoryTechniquescol): self
    {
        $this->nCategoryTechniquescol = $nCategoryTechniquescol;

        return $this;
    }


}
