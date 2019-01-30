<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * InscriptionHasNRequirementsStudent
 *
 * @ORM\Table(name="inscription_has_n_requirements_student", indexes={@ORM\Index(name="fk_inscription_has_n_requirements_student_n_requirements_st_idx", columns={"n_requirements_student_id"}), @ORM\Index(name="fk_inscription_has_n_requirements_student_user1_idx", columns={"user_id"}), @ORM\Index(name="fk_inscription_has_n_requirements_student_inscription1_idx", columns={"inscription_id"})})
 * @ORM\Entity
 */
class InscriptionHasNRequirementsStudent
{
    /**
     * @var \DateTime|null
     *
     * @ORM\Column(name="create_time", type="datetime", nullable=true)
     */
    private $createTime;

    /**
     * @var \DateTime|null
     *
     * @ORM\Column(name="update_time", type="datetime", nullable=true)
     */
    private $updateTime;

    /**
     * @var \Inscription
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\OneToOne(targetEntity="Inscription")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="inscription_id", referencedColumnName="id")
     * })
     */
    private $inscription;

    /**
     * @var \NRequirementsStudent
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\OneToOne(targetEntity="NRequirementsStudent")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="n_requirements_student_id", referencedColumnName="id")
     * })
     */
    private $nRequirementsStudent;

    /**
     * @var \User
     *
     * @ORM\ManyToOne(targetEntity="User")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="user_id", referencedColumnName="id")
     * })
     */
    private $user;

    public function getCreateTime(): ?\DateTimeInterface
    {
        return $this->createTime;
    }

    public function setCreateTime(?\DateTimeInterface $createTime): self
    {
        $this->createTime = $createTime;

        return $this;
    }

    public function getUpdateTime(): ?\DateTimeInterface
    {
        return $this->updateTime;
    }

    public function setUpdateTime(?\DateTimeInterface $updateTime): self
    {
        $this->updateTime = $updateTime;

        return $this;
    }

    public function getInscription(): ?Inscription
    {
        return $this->inscription;
    }

    public function setInscription(?Inscription $inscription): self
    {
        $this->inscription = $inscription;

        return $this;
    }

    public function getNRequirementsStudent(): ?NRequirementsStudent
    {
        return $this->nRequirementsStudent;
    }

    public function setNRequirementsStudent(?NRequirementsStudent $nRequirementsStudent): self
    {
        $this->nRequirementsStudent = $nRequirementsStudent;

        return $this;
    }

    public function getUser(): ?User
    {
        return $this->user;
    }

    public function setUser(?User $user): self
    {
        $this->user = $user;

        return $this;
    }


}
