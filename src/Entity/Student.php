<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Student
 *
 * @ORM\Table(name="student", indexes={@ORM\Index(name="fk_student_user1_idx", columns={"user_id"})})
 * @ORM\Entity
 */
class Student
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
     * @ORM\Column(name="name2", type="string", length=45, nullable=true)
     */
    private $name2;

    /**
     * @var string|null
     *
     * @ORM\Column(name="surname", type="string", length=45, nullable=true)
     */
    private $surname;

    /**
     * @var string|null
     *
     * @ORM\Column(name="surname2", type="string", length=45, nullable=true)
     */
    private $surname2;

    /**
     * @var string|null
     *
     * @ORM\Column(name="phone", type="string", length=45, nullable=true)
     */
    private $phone;

    /**
     * @var string|null
     *
     * @ORM\Column(name="identification", type="string", length=45, nullable=true)
     */
    private $identification;

    /**
     * @var bool|null
     *
     * @ORM\Column(name="admitted", type="boolean", nullable=true)
     */
    private $admitted;

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

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(?string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getName2(): ?string
    {
        return $this->name2;
    }

    public function setName2(?string $name2): self
    {
        $this->name2 = $name2;

        return $this;
    }

    public function getSurname(): ?string
    {
        return $this->surname;
    }

    public function setSurname(?string $surname): self
    {
        $this->surname = $surname;

        return $this;
    }

    public function getSurname2(): ?string
    {
        return $this->surname2;
    }

    public function setSurname2(?string $surname2): self
    {
        $this->surname2 = $surname2;

        return $this;
    }

    public function getPhone(): ?string
    {
        return $this->phone;
    }

    public function setPhone(?string $phone): self
    {
        $this->phone = $phone;

        return $this;
    }

    public function getIdentification(): ?string
    {
        return $this->identification;
    }

    public function setIdentification(?string $identification): self
    {
        $this->identification = $identification;

        return $this;
    }

    public function getAdmitted(): ?bool
    {
        return $this->admitted;
    }

    public function setAdmitted(?bool $admitted): self
    {
        $this->admitted = $admitted;

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
