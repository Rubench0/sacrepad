<?php declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20190413035139 extends AbstractMigration
{
    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE binnacle_access_user CHANGE system system VARCHAR(45) DEFAULT NULL');
        $this->addSql('ALTER TABLE lection ADD limix INT DEFAULT NULL');
        $this->addSql('ALTER TABLE n_days_has_class ADD PRIMARY KEY (class_id, n_days_id)');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE binnacle_access_user CHANGE system system VARCHAR(3000) DEFAULT NULL COLLATE utf8_general_ci');
        $this->addSql('ALTER TABLE lection DROP limix');
        $this->addSql('ALTER TABLE n_days_has_class DROP PRIMARY KEY');
    }
}
