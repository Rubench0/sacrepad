<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Security\Core\User\UserInterface;

/**
 * Users
 *
 * @ORM\Table(name="users", indexes={@ORM\Index(name="fk_user_data_idx", columns={"id_user_data"})})
 * @ORM\Entity
 */
class Users implements UserInterface, \Serializable
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
     * @ORM\Column(name="login", type="string", length=45, nullable=true)
     */
    private $login;

    /**
     * @var string|null
     *
     * @ORM\Column(name="password", type="string", length=1000, nullable=true)
     */
    private $password;

    /**
     * @var string|null
     *
     * @ORM\Column(name="email", type="string", length=300, nullable=true)
     */
    private $email;

    /**
     * @var bool|null
     *
     * @ORM\Column(name="is_active", type="boolean", nullable=true)
     */
    private $isActive;

    /**
     * @var string|null
     *
     * @ORM\Column(name="role", type="string", length=45, nullable=true)
     */
    private $role;

    /**
     * @var \UserData
     *
     * @ORM\ManyToOne(targetEntity="UserData")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_user_data", referencedColumnName="id")
     * })
     */
    private $idUserData;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getLogin(): ?string
    {
        return $this->login;
    }

    public function setLogin(?string $login): self
    {
        $this->login = $login;

        return $this;
    }

    public function getPassword(): ?string
    {
        return $this->password;
    }

    public function setPassword(?string $password): self
    {
        $this->password = $password;

        return $this;
    }

    public function getEmail(): ?string
    {
        return $this->email;
    }

    public function setEmail(?string $email): self
    {
        $this->email = $email;

        return $this;
    }

    public function getIsActive(): ?bool
    {
        return $this->isActive;
    }

    public function setIsActive(?bool $isActive): self
    {
        $this->isActive = $isActive;

        return $this;
    }

    public function getRoles(): ?array
    {
        return array($this->role);
    }

    public function setRole(?string $role): self
    {
        $this->role = $role;

        return $this;
    }

    public function getIdUserData(): ?UserData
    {
        return $this->idUserData;
    }

    public function setIdUserData(?UserData $idUserData): self
    {
        $this->idUserData = $idUserData;

        return $this;
    }

    public function getSalt() {}

    public function eraseCredentials() {}

    public function getUsername(): ?string {
        return $this->login;
    }

    public function serialize() {
        return serialize([
            $this->id, 
            $this->login, 
            $this->email, 
            $this->password     
        ]);
    }

    public function unserialize($string) {
        list (
            $this->id, 
            $this->login, 
            $this->email, 
            $this->password     
        ) = unserialize($string, ['allowed_classes' => false]);
    }
}
