<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Lection
 *
 * @ORM\Table(name="lection", indexes={@ORM\Index(name="fk_class_classroom1_idx", columns={"classroom_id"}), @ORM\Index(name="fk_class_user1_idx", columns={"user_id"}), @ORM\Index(name="fk_class_subject1_idx", columns={"subject_id"}), @ORM\Index(name="fk_class_facilitator1_idx", columns={"facilitator_id"}), @ORM\Index(name="fk_lection_cohort1_idx", columns={"cohort_id"})})
 * @ORM\Entity
 */
class Lection
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
     * @ORM\Column(name="code", type="string", length=45, nullable=true)
     */
    private $code;

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
     * @var \Classroom
     *
     * @ORM\ManyToOne(targetEntity="Classroom")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="classroom_id", referencedColumnName="id")
     * })
     */
    private $classroom;

    /**
     * @var \Facilitator
     *
     * @ORM\ManyToOne(targetEntity="Facilitator")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="facilitator_id", referencedColumnName="id")
     * })
     */
    private $facilitator;

    /**
     * @var \Subject
     *
     * @ORM\ManyToOne(targetEntity="Subject")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="subject_id", referencedColumnName="id")
     * })
     */
    private $subject;

    /**
     * @var \User
     *
     * @ORM\ManyToOne(targetEntity="User")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="user_id", referencedColumnName="id")
     * })
     */
    private $user;

    /**
     * @var \Cohort
     *
     * @ORM\ManyToOne(targetEntity="Cohort")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="cohort_id", referencedColumnName="id")
     * })
     */
    private $cohort;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getCode(): ?string
    {
        return $this->code;
    }

    public function setCode(?string $code): self
    {
        $this->code = $code;

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

    public function getClassroom(): ?Classroom
    {
        return $this->classroom;
    }

    public function setClassroom(?Classroom $classroom): self
    {
        $this->classroom = $classroom;

        return $this;
    }

    public function getFacilitator(): ?Facilitator
    {
        return $this->facilitator;
    }

    public function setFacilitator(?Facilitator $facilitator): self
    {
        $this->facilitator = $facilitator;

        return $this;
    }

    public function getSubject(): ?Subject
    {
        return $this->subject;
    }

    public function setSubject(?Subject $subject): self
    {
        $this->subject = $subject;

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

    public function getCohort(): ?Cohort
    {
        return $this->cohort;
    }

    public function setCohort(?Cohort $cohort): self
    {
        $this->cohort = $cohort;

        return $this;
    }


}
