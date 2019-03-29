<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * NDaysHasClass
 *
 * @ORM\Table(name="n_days_has_class", indexes={@ORM\Index(name="fk_n_days_has_class_class1_idx", columns={"class_id"}), @ORM\Index(name="fk_n_days_has_class_user1_idx", columns={"user_id"}), @ORM\Index(name="fk_n_days_has_class_n_days1_idx", columns={"n_days_id"})})
 * @ORM\Entity
 */
class NDaysHasClass
{
    /**
     * @var string|null
     *
     * @ORM\Column(name="class_time", type="string", length=45, nullable=true)
     */
    private $classTime;

    /**
     * @var string|null
     *
     * @ORM\Column(name="hours", type="string", length=45, nullable=true)
     */
    private $hours;

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
     * @var \Lection
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\OneToOne(targetEntity="Lection")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="class_id", referencedColumnName="id")
     * })
     */
    private $class;

    /**
     * @var \NDays
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\OneToOne(targetEntity="NDays")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="n_days_id", referencedColumnName="id")
     * })
     */
    private $nDays;

    /**
     * @var \User
     *
     * @ORM\ManyToOne(targetEntity="User")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="user_id", referencedColumnName="id")
     * })
     */
    private $user;

    public function getClassTime(): ?string
    {
        return $this->classTime;
    }

    public function setClassTime(?string $classTime): self
    {
        $this->classTime = $classTime;

        return $this;
    }

    public function getHours(): ?string
    {
        return $this->hours;
    }

    public function setHours(?string $hours): self
    {
        $this->hours = $hours;

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

    public function getClass(): ?Lection
    {
        return $this->class;
    }

    public function setClass(?Lection $class): self
    {
        $this->class = $class;

        return $this;
    }

    public function getNDays(): ?NDays
    {
        return $this->nDays;
    }

    public function setNDays(?NDays $nDays): self
    {
        $this->nDays = $nDays;

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
