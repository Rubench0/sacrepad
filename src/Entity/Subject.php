<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Subject
 *
 * @ORM\Table(name="subject", indexes={@ORM\Index(name="fk_subject_n_types_subject1_idx", columns={"n_types_subject_id"}), @ORM\Index(name="fk_subject_user1_idx", columns={"user_id"}), @ORM\Index(name="fk_subject_n_classification_subject1_idx", columns={"n_classification_subject_id"}), @ORM\Index(name="fk_subject_cohort1_idx", columns={"cohort_id"})})
 * @ORM\Entity
 */
class Subject
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
     * @ORM\Column(name="name", type="string", length=45, nullable=true)
     */
    private $name;

    /**
     * @var string|null
     *
     * @ORM\Column(name="description", type="string", length=1000, nullable=true)
     */
    private $description;

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
     * @var \Cohort
     *
     * @ORM\ManyToOne(targetEntity="Cohort")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="cohort_id", referencedColumnName="id")
     * })
     */
    private $cohort;

    /**
     * @var \NClassificationSubject
     *
     * @ORM\ManyToOne(targetEntity="NClassificationSubject")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="n_classification_subject_id", referencedColumnName="id")
     * })
     */
    private $nClassificationSubject;

    /**
     * @var \NTypesSubject
     *
     * @ORM\ManyToOne(targetEntity="NTypesSubject")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="n_types_subject_id", referencedColumnName="id")
     * })
     */
    private $nTypesSubject;

    /**
     * @var \User
     *
     * @ORM\ManyToOne(targetEntity="User")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="user_id", referencedColumnName="id")
     * })
     */
    private $user;

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

    public function getCohort(): ?Cohort
    {
        return $this->cohort;
    }

    public function setCohort(?Cohort $cohort): self
    {
        $this->cohort = $cohort;

        return $this;
    }

    public function getNClassificationSubject(): ?NClassificationSubject
    {
        return $this->nClassificationSubject;
    }

    public function setNClassificationSubject(?NClassificationSubject $nClassificationSubject): self
    {
        $this->nClassificationSubject = $nClassificationSubject;

        return $this;
    }

    public function getNTypesSubject(): ?NTypesSubject
    {
        return $this->nTypesSubject;
    }

    public function setNTypesSubject(?NTypesSubject $nTypesSubject): self
    {
        $this->nTypesSubject = $nTypesSubject;

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
