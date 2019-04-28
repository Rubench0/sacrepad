<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Cohort
 *
 * @ORM\Table(name="cohort", indexes={@ORM\Index(name="fk_cohort_user1_idx", columns={"user_id"})})
 * @ORM\Entity
 */
class Cohort
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
     * @var bool|null
     *
     * @ORM\Column(name="active", type="boolean", nullable=true)
     */
    private $active;

    /**
     * @var \DateTime|null
     *
     * @ORM\Column(name="initial_date", type="datetime", nullable=true)
     */
    private $initialDate;

    /**
     * @var \DateTime|null
     *
     * @ORM\Column(name="final_date", type="datetime", nullable=true)
     */
    private $finalDate;

    /**
     * @var string|null
     *
     * @ORM\Column(name="year", type="string", length=45, nullable=true)
     */
    private $year;

    /**
     * @var string|null
     *
     * @ORM\Column(name="code", type="string", length=45, nullable=true)
     */
    private $code;

    /**
     * @var int|null
     *
     * @ORM\Column(name="limix", type="integer", nullable=true)
     */
    private $limit;

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

    public function getActive(): ?bool
    {
        return $this->active;
    }

    public function setActive(?bool $active): self
    {
        $this->active = $active;

        return $this;
    }

    public function getInitialDate(): ?\DateTimeInterface
    {
        return $this->initialDate;
    }

    public function setInitialDate(?\DateTimeInterface $initialDate): self
    {
        $this->initialDate = $initialDate;

        return $this;
    }

    public function getFinalDate(): ?\DateTimeInterface
    {
        return $this->finalDate;
    }

    public function setFinalDate(?\DateTimeInterface $finalDate): self
    {
        $this->finalDate = $finalDate;

        return $this;
    }

    public function getYear(): ?string
    {
        return $this->year;
    }

    public function setYear(?string $year): self
    {
        $this->year = $year;

        return $this;
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

    public function getLimit(): ?int
    {
        return $this->limit;
    }

    public function setLimit(?int $limit): self
    {
        $this->limit = $limit;

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
