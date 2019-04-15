<?php declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20190413035550 extends AbstractMigration
{
    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE binnacle_access_user (id INT AUTO_INCREMENT NOT NULL, user_id INT DEFAULT NULL, date DATETIME DEFAULT NULL, system VARCHAR(45) DEFAULT NULL, device VARCHAR(45) DEFAULT NULL, adreess VARCHAR(45) DEFAULT NULL, INDEX fk_binnacle_access_user_user1_idx (user_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE binnacle_actions (id INT AUTO_INCREMENT NOT NULL, user_id INT DEFAULT NULL, entity VARCHAR(45) DEFAULT NULL, action VARCHAR(45) DEFAULT NULL, date DATETIME DEFAULT NULL, description VARCHAR(3000) DEFAULT NULL, INDEX fk_binnacle_actions_user1_idx (user_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE classroom (id INT AUTO_INCREMENT NOT NULL, user_id INT DEFAULT NULL, edifice VARCHAR(45) DEFAULT NULL, floor VARCHAR(45) DEFAULT NULL, name VARCHAR(45) DEFAULT NULL, create_time DATETIME DEFAULT NULL, update_time DATETIME DEFAULT NULL, INDEX fk_classroom_user1_idx (user_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE cohort (id INT AUTO_INCREMENT NOT NULL, user_id INT DEFAULT NULL, active TINYINT(1) DEFAULT NULL, initial_date DATETIME DEFAULT NULL, final_date DATETIME DEFAULT NULL, year VARCHAR(45) DEFAULT NULL, code VARCHAR(45) DEFAULT NULL, create_time DATETIME DEFAULT NULL, update_time DATETIME DEFAULT NULL, INDEX fk_cohort_user1_idx (user_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE facilitator (id INT AUTO_INCREMENT NOT NULL, user_id INT DEFAULT NULL, identification VARCHAR(45) DEFAULT NULL, name VARCHAR(45) DEFAULT NULL, surname VARCHAR(45) DEFAULT NULL, phone VARCHAR(45) DEFAULT NULL, profession VARCHAR(45) DEFAULT NULL, create_time DATETIME DEFAULT NULL, update_time DATETIME DEFAULT NULL, INDEX fk_facilitator_user1_idx (user_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE inscription (id INT AUTO_INCREMENT NOT NULL, class_id INT DEFAULT NULL, student_id INT DEFAULT NULL, user_id INT DEFAULT NULL, aproved TINYINT(1) DEFAULT NULL, create_time DATETIME DEFAULT NULL, update_time DATETIME DEFAULT NULL, INDEX fk_inscription_student1_idx (student_id), INDEX fk_inscription_class1_idx (class_id), INDEX fk_inscription_user1_idx (user_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE inscription_has_n_requirements_student (inscription_id INT NOT NULL, n_requirements_student_id INT NOT NULL, user_id INT DEFAULT NULL, create_time DATETIME DEFAULT NULL, update_time DATETIME DEFAULT NULL, INDEX fk_inscription_has_n_requirements_student_n_requirements_st_idx (n_requirements_student_id), INDEX fk_inscription_has_n_requirements_student_user1_idx (user_id), INDEX fk_inscription_has_n_requirements_student_inscription1_idx (inscription_id), PRIMARY KEY(inscription_id, n_requirements_student_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE lection (id INT AUTO_INCREMENT NOT NULL, classroom_id INT DEFAULT NULL, facilitator_id INT DEFAULT NULL, subject_id INT DEFAULT NULL, user_id INT DEFAULT NULL, code VARCHAR(45) DEFAULT NULL, limix INT DEFAULT NULL, create_time DATETIME DEFAULT NULL, update_time DATETIME DEFAULT NULL, INDEX fk_class_classroom1_idx (classroom_id), INDEX fk_class_user1_idx (user_id), INDEX fk_class_subject1_idx (subject_id), INDEX fk_class_facilitator1_idx (facilitator_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE n_classification_subject (id INT AUTO_INCREMENT NOT NULL, user_id INT DEFAULT NULL, name VARCHAR(45) DEFAULT NULL, create_time DATETIME DEFAULT NULL, update_time DATETIME DEFAULT NULL, INDEX fk_n_classification_subject_user1_idx (user_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE n_days (id INT AUTO_INCREMENT NOT NULL, user_id INT DEFAULT NULL, day VARCHAR(45) DEFAULT NULL, create_time DATETIME DEFAULT NULL, update_time DATETIME DEFAULT NULL, INDEX fk_n_days_user1_idx (user_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE n_days_has_class (class_id INT NOT NULL, n_days_id INT NOT NULL, user_id INT DEFAULT NULL, class_time VARCHAR(45) DEFAULT NULL, hours VARCHAR(45) DEFAULT NULL, create_time DATETIME DEFAULT NULL, update_time DATETIME DEFAULT NULL, INDEX fk_n_days_has_class_class1_idx (class_id), INDEX fk_n_days_has_class_user1_idx (user_id), INDEX fk_n_days_has_class_n_days1_idx (n_days_id), PRIMARY KEY(class_id, n_days_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE n_requirements_student (id INT AUTO_INCREMENT NOT NULL, user_id INT DEFAULT NULL, name VARCHAR(45) DEFAULT NULL, create_time DATETIME DEFAULT NULL, update_time DATETIME DEFAULT NULL, INDEX fk_n_requirements_student_user1_idx (user_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE n_types_subject (id INT AUTO_INCREMENT NOT NULL, user_id INT DEFAULT NULL, name VARCHAR(45) DEFAULT NULL, create_time DATETIME DEFAULT NULL, update_time DATETIME DEFAULT NULL, INDEX fk_n_types_subject_user1_idx (user_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE qualification (id INT AUTO_INCREMENT NOT NULL, inscription_id INT DEFAULT NULL, user_id INT DEFAULT NULL, note VARCHAR(45) DEFAULT NULL, create_time DATETIME DEFAULT NULL, update_time DATETIME DEFAULT NULL, INDEX fk_qualification_user1_idx (user_id), INDEX fk_qualification_inscription1_idx (inscription_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE student (id INT AUTO_INCREMENT NOT NULL, user_id INT DEFAULT NULL, name VARCHAR(45) DEFAULT NULL, name2 VARCHAR(45) DEFAULT NULL, surname VARCHAR(45) DEFAULT NULL, surname2 VARCHAR(45) DEFAULT NULL, phone VARCHAR(45) DEFAULT NULL, identification VARCHAR(45) DEFAULT NULL, admitted TINYINT(1) DEFAULT NULL, create_time DATETIME DEFAULT NULL, update_time DATETIME DEFAULT NULL, INDEX fk_student_user1_idx (user_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE subject (id INT AUTO_INCREMENT NOT NULL, cohort_id INT DEFAULT NULL, n_classification_subject_id INT DEFAULT NULL, n_types_subject_id INT DEFAULT NULL, user_id INT DEFAULT NULL, name VARCHAR(45) DEFAULT NULL, description VARCHAR(1000) DEFAULT NULL, create_time DATETIME DEFAULT NULL, update_time DATETIME DEFAULT NULL, INDEX fk_subject_n_types_subject1_idx (n_types_subject_id), INDEX fk_subject_user1_idx (user_id), INDEX fk_subject_n_classification_subject1_idx (n_classification_subject_id), INDEX fk_subject_cohort1_idx (cohort_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE user (id INT AUTO_INCREMENT NOT NULL, facilitator_id INT DEFAULT NULL, student_id INT DEFAULT NULL, user_data_id INT DEFAULT NULL, login VARCHAR(45) DEFAULT NULL, password VARCHAR(1000) DEFAULT NULL, email VARCHAR(300) DEFAULT NULL, is_active TINYINT(1) DEFAULT NULL, role VARCHAR(45) DEFAULT NULL, create_time DATETIME DEFAULT NULL, update_time DATETIME DEFAULT NULL, INDEX fk_user_student1_idx (student_id), INDEX fk_user_user_data_idx (user_data_id), INDEX fk_user_facilitator1_idx (facilitator_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE user_data (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(45) DEFAULT NULL, surname VARCHAR(45) DEFAULT NULL, phone VARCHAR(11) DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('ALTER TABLE binnacle_access_user ADD CONSTRAINT FK_BC4BEFA7A76ED395 FOREIGN KEY (user_id) REFERENCES user (id)');
        $this->addSql('ALTER TABLE binnacle_actions ADD CONSTRAINT FK_668982CAA76ED395 FOREIGN KEY (user_id) REFERENCES user (id)');
        $this->addSql('ALTER TABLE classroom ADD CONSTRAINT FK_497D309DA76ED395 FOREIGN KEY (user_id) REFERENCES user (id)');
        $this->addSql('ALTER TABLE cohort ADD CONSTRAINT FK_D3B8C16BA76ED395 FOREIGN KEY (user_id) REFERENCES user (id)');
        $this->addSql('ALTER TABLE facilitator ADD CONSTRAINT FK_A43A8DB6A76ED395 FOREIGN KEY (user_id) REFERENCES user (id)');
        $this->addSql('ALTER TABLE inscription ADD CONSTRAINT FK_5E90F6D6EA000B10 FOREIGN KEY (class_id) REFERENCES lection (id)');
        $this->addSql('ALTER TABLE inscription ADD CONSTRAINT FK_5E90F6D6CB944F1A FOREIGN KEY (student_id) REFERENCES student (id)');
        $this->addSql('ALTER TABLE inscription ADD CONSTRAINT FK_5E90F6D6A76ED395 FOREIGN KEY (user_id) REFERENCES user (id)');
        $this->addSql('ALTER TABLE inscription_has_n_requirements_student ADD CONSTRAINT FK_E259FBFF5DAC5993 FOREIGN KEY (inscription_id) REFERENCES inscription (id)');
        $this->addSql('ALTER TABLE inscription_has_n_requirements_student ADD CONSTRAINT FK_E259FBFFBC7F3860 FOREIGN KEY (n_requirements_student_id) REFERENCES n_requirements_student (id)');
        $this->addSql('ALTER TABLE inscription_has_n_requirements_student ADD CONSTRAINT FK_E259FBFFA76ED395 FOREIGN KEY (user_id) REFERENCES user (id)');
        $this->addSql('ALTER TABLE lection ADD CONSTRAINT FK_BCE596C86278D5A8 FOREIGN KEY (classroom_id) REFERENCES classroom (id)');
        $this->addSql('ALTER TABLE lection ADD CONSTRAINT FK_BCE596C8EFB37882 FOREIGN KEY (facilitator_id) REFERENCES facilitator (id)');
        $this->addSql('ALTER TABLE lection ADD CONSTRAINT FK_BCE596C823EDC87 FOREIGN KEY (subject_id) REFERENCES subject (id)');
        $this->addSql('ALTER TABLE lection ADD CONSTRAINT FK_BCE596C8A76ED395 FOREIGN KEY (user_id) REFERENCES user (id)');
        $this->addSql('ALTER TABLE n_classification_subject ADD CONSTRAINT FK_CBF7E33DA76ED395 FOREIGN KEY (user_id) REFERENCES user (id)');
        $this->addSql('ALTER TABLE n_days ADD CONSTRAINT FK_F3DFB4E9A76ED395 FOREIGN KEY (user_id) REFERENCES user (id)');
        $this->addSql('ALTER TABLE n_days_has_class ADD CONSTRAINT FK_F8A5BE2EA000B10 FOREIGN KEY (class_id) REFERENCES lection (id)');
        $this->addSql('ALTER TABLE n_days_has_class ADD CONSTRAINT FK_F8A5BE256B78A15 FOREIGN KEY (n_days_id) REFERENCES n_days (id)');
        $this->addSql('ALTER TABLE n_days_has_class ADD CONSTRAINT FK_F8A5BE2A76ED395 FOREIGN KEY (user_id) REFERENCES user (id)');
        $this->addSql('ALTER TABLE n_requirements_student ADD CONSTRAINT FK_1DA7C8C0A76ED395 FOREIGN KEY (user_id) REFERENCES user (id)');
        $this->addSql('ALTER TABLE n_types_subject ADD CONSTRAINT FK_20C9EED4A76ED395 FOREIGN KEY (user_id) REFERENCES user (id)');
        $this->addSql('ALTER TABLE qualification ADD CONSTRAINT FK_B712F0CE5DAC5993 FOREIGN KEY (inscription_id) REFERENCES inscription (id)');
        $this->addSql('ALTER TABLE qualification ADD CONSTRAINT FK_B712F0CEA76ED395 FOREIGN KEY (user_id) REFERENCES user (id)');
        $this->addSql('ALTER TABLE student ADD CONSTRAINT FK_B723AF33A76ED395 FOREIGN KEY (user_id) REFERENCES user (id)');
        $this->addSql('ALTER TABLE subject ADD CONSTRAINT FK_FBCE3E7A35983C93 FOREIGN KEY (cohort_id) REFERENCES cohort (id)');
        $this->addSql('ALTER TABLE subject ADD CONSTRAINT FK_FBCE3E7A1C7874A8 FOREIGN KEY (n_classification_subject_id) REFERENCES n_classification_subject (id)');
        $this->addSql('ALTER TABLE subject ADD CONSTRAINT FK_FBCE3E7ACE84FC8A FOREIGN KEY (n_types_subject_id) REFERENCES n_types_subject (id)');
        $this->addSql('ALTER TABLE subject ADD CONSTRAINT FK_FBCE3E7AA76ED395 FOREIGN KEY (user_id) REFERENCES user (id)');
        $this->addSql('ALTER TABLE user ADD CONSTRAINT FK_8D93D649EFB37882 FOREIGN KEY (facilitator_id) REFERENCES facilitator (id)');
        $this->addSql('ALTER TABLE user ADD CONSTRAINT FK_8D93D649CB944F1A FOREIGN KEY (student_id) REFERENCES student (id)');
        $this->addSql('ALTER TABLE user ADD CONSTRAINT FK_8D93D6496FF8BF36 FOREIGN KEY (user_data_id) REFERENCES user_data (id)');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE lection DROP FOREIGN KEY FK_BCE596C86278D5A8');
        $this->addSql('ALTER TABLE subject DROP FOREIGN KEY FK_FBCE3E7A35983C93');
        $this->addSql('ALTER TABLE lection DROP FOREIGN KEY FK_BCE596C8EFB37882');
        $this->addSql('ALTER TABLE user DROP FOREIGN KEY FK_8D93D649EFB37882');
        $this->addSql('ALTER TABLE inscription_has_n_requirements_student DROP FOREIGN KEY FK_E259FBFF5DAC5993');
        $this->addSql('ALTER TABLE qualification DROP FOREIGN KEY FK_B712F0CE5DAC5993');
        $this->addSql('ALTER TABLE inscription DROP FOREIGN KEY FK_5E90F6D6EA000B10');
        $this->addSql('ALTER TABLE n_days_has_class DROP FOREIGN KEY FK_F8A5BE2EA000B10');
        $this->addSql('ALTER TABLE subject DROP FOREIGN KEY FK_FBCE3E7A1C7874A8');
        $this->addSql('ALTER TABLE n_days_has_class DROP FOREIGN KEY FK_F8A5BE256B78A15');
        $this->addSql('ALTER TABLE inscription_has_n_requirements_student DROP FOREIGN KEY FK_E259FBFFBC7F3860');
        $this->addSql('ALTER TABLE subject DROP FOREIGN KEY FK_FBCE3E7ACE84FC8A');
        $this->addSql('ALTER TABLE inscription DROP FOREIGN KEY FK_5E90F6D6CB944F1A');
        $this->addSql('ALTER TABLE user DROP FOREIGN KEY FK_8D93D649CB944F1A');
        $this->addSql('ALTER TABLE lection DROP FOREIGN KEY FK_BCE596C823EDC87');
        $this->addSql('ALTER TABLE binnacle_access_user DROP FOREIGN KEY FK_BC4BEFA7A76ED395');
        $this->addSql('ALTER TABLE binnacle_actions DROP FOREIGN KEY FK_668982CAA76ED395');
        $this->addSql('ALTER TABLE classroom DROP FOREIGN KEY FK_497D309DA76ED395');
        $this->addSql('ALTER TABLE cohort DROP FOREIGN KEY FK_D3B8C16BA76ED395');
        $this->addSql('ALTER TABLE facilitator DROP FOREIGN KEY FK_A43A8DB6A76ED395');
        $this->addSql('ALTER TABLE inscription DROP FOREIGN KEY FK_5E90F6D6A76ED395');
        $this->addSql('ALTER TABLE inscription_has_n_requirements_student DROP FOREIGN KEY FK_E259FBFFA76ED395');
        $this->addSql('ALTER TABLE lection DROP FOREIGN KEY FK_BCE596C8A76ED395');
        $this->addSql('ALTER TABLE n_classification_subject DROP FOREIGN KEY FK_CBF7E33DA76ED395');
        $this->addSql('ALTER TABLE n_days DROP FOREIGN KEY FK_F3DFB4E9A76ED395');
        $this->addSql('ALTER TABLE n_days_has_class DROP FOREIGN KEY FK_F8A5BE2A76ED395');
        $this->addSql('ALTER TABLE n_requirements_student DROP FOREIGN KEY FK_1DA7C8C0A76ED395');
        $this->addSql('ALTER TABLE n_types_subject DROP FOREIGN KEY FK_20C9EED4A76ED395');
        $this->addSql('ALTER TABLE qualification DROP FOREIGN KEY FK_B712F0CEA76ED395');
        $this->addSql('ALTER TABLE student DROP FOREIGN KEY FK_B723AF33A76ED395');
        $this->addSql('ALTER TABLE subject DROP FOREIGN KEY FK_FBCE3E7AA76ED395');
        $this->addSql('ALTER TABLE user DROP FOREIGN KEY FK_8D93D6496FF8BF36');
        $this->addSql('DROP TABLE binnacle_access_user');
        $this->addSql('DROP TABLE binnacle_actions');
        $this->addSql('DROP TABLE classroom');
        $this->addSql('DROP TABLE cohort');
        $this->addSql('DROP TABLE facilitator');
        $this->addSql('DROP TABLE inscription');
        $this->addSql('DROP TABLE inscription_has_n_requirements_student');
        $this->addSql('DROP TABLE lection');
        $this->addSql('DROP TABLE n_classification_subject');
        $this->addSql('DROP TABLE n_days');
        $this->addSql('DROP TABLE n_days_has_class');
        $this->addSql('DROP TABLE n_requirements_student');
        $this->addSql('DROP TABLE n_types_subject');
        $this->addSql('DROP TABLE qualification');
        $this->addSql('DROP TABLE student');
        $this->addSql('DROP TABLE subject');
        $this->addSql('DROP TABLE user');
        $this->addSql('DROP TABLE user_data');
    }
}
