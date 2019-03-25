<?php declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20190320024404 extends AbstractMigration
{
    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE binnacle_access_user CHANGE user_id user_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE binnacle_actions CHANGE user_id user_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE classroom CHANGE user_id user_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE cohort CHANGE user_id user_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE facilitator CHANGE user_id user_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE inscription CHANGE class_id class_id INT DEFAULT NULL, CHANGE student_id student_id INT DEFAULT NULL, CHANGE user_id user_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE inscription_has_n_requirements_student CHANGE user_id user_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE lection CHANGE subject_id subject_id INT DEFAULT NULL, CHANGE classroom_id classroom_id INT DEFAULT NULL, CHANGE facilitator_id facilitator_id INT DEFAULT NULL, CHANGE user_id user_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE n_classification_subject CHANGE user_id user_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE n_days CHANGE user_id user_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE n_days_has_class DROP PRIMARY KEY');
        $this->addSql('ALTER TABLE n_days_has_class ADD class_time VARCHAR(45) DEFAULT NULL, CHANGE user_id user_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE n_days_has_class ADD PRIMARY KEY (class_id, n_days_id)');
        $this->addSql('ALTER TABLE n_requirements_student CHANGE user_id user_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE n_types_subject CHANGE user_id user_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE qualification CHANGE inscription_id inscription_id INT DEFAULT NULL, CHANGE user_id user_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE student CHANGE user_id user_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE subject CHANGE n_classification_subject_id n_classification_subject_id INT DEFAULT NULL, CHANGE n_types_subject_id n_types_subject_id INT DEFAULT NULL, CHANGE cohort_id cohort_id INT DEFAULT NULL, CHANGE user_id user_id INT DEFAULT NULL');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE binnacle_access_user CHANGE user_id user_id INT NOT NULL');
        $this->addSql('ALTER TABLE binnacle_actions CHANGE user_id user_id INT NOT NULL');
        $this->addSql('ALTER TABLE classroom CHANGE user_id user_id INT NOT NULL');
        $this->addSql('ALTER TABLE cohort CHANGE user_id user_id INT NOT NULL');
        $this->addSql('ALTER TABLE facilitator CHANGE user_id user_id INT NOT NULL');
        $this->addSql('ALTER TABLE inscription CHANGE class_id class_id INT NOT NULL, CHANGE student_id student_id INT NOT NULL, CHANGE user_id user_id INT NOT NULL');
        $this->addSql('ALTER TABLE inscription_has_n_requirements_student CHANGE user_id user_id INT NOT NULL');
        $this->addSql('ALTER TABLE lection CHANGE classroom_id classroom_id INT NOT NULL, CHANGE facilitator_id facilitator_id INT NOT NULL, CHANGE subject_id subject_id INT NOT NULL, CHANGE user_id user_id INT NOT NULL');
        $this->addSql('ALTER TABLE n_classification_subject CHANGE user_id user_id INT NOT NULL');
        $this->addSql('ALTER TABLE n_days CHANGE user_id user_id INT NOT NULL');
        $this->addSql('ALTER TABLE n_days_has_class DROP PRIMARY KEY');
        $this->addSql('ALTER TABLE n_days_has_class DROP class_time, CHANGE user_id user_id INT NOT NULL');
        $this->addSql('ALTER TABLE n_days_has_class ADD PRIMARY KEY (n_days_id, class_id)');
        $this->addSql('ALTER TABLE n_requirements_student CHANGE user_id user_id INT NOT NULL');
        $this->addSql('ALTER TABLE n_types_subject CHANGE user_id user_id INT NOT NULL');
        $this->addSql('ALTER TABLE qualification CHANGE inscription_id inscription_id INT NOT NULL, CHANGE user_id user_id INT NOT NULL');
        $this->addSql('ALTER TABLE student CHANGE user_id user_id INT NOT NULL');
        $this->addSql('ALTER TABLE subject CHANGE cohort_id cohort_id INT NOT NULL, CHANGE n_classification_subject_id n_classification_subject_id INT NOT NULL, CHANGE n_types_subject_id n_types_subject_id INT NOT NULL, CHANGE user_id user_id INT NOT NULL');
    }
}
