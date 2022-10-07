-- +--------------------------------------------------------------------+
-- | Copyright CiviCRM LLC. All rights reserved.                        |
-- |                                                                    |
-- | This work is published under the GNU AGPLv3 license with some      |
-- | permitted exceptions and without any warranty. For full license    |
-- | and copyright information, see https://civicrm.org/licensing       |
-- +--------------------------------------------------------------------+
--
-- Generated from schema.tpl
-- DO NOT EDIT.  Generated by CRM_Core_CodeGen
--
-- /*******************************************************
-- *
-- * Clean up the existing tables - this section generated from drop.tpl
-- *
-- *******************************************************/

SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `civicrm_flag_set`;

SET FOREIGN_KEY_CHECKS=1;
-- /*******************************************************
-- *
-- * Create new tables
-- *
-- *******************************************************/

-- /*******************************************************
-- *
-- * civicrm_flag_set
-- *
-- * Do not leave fixme comments in place.
-- *
-- *******************************************************/
CREATE TABLE `civicrm_flag_set` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique FlagSet ID',
  `name` varchar(32) COMMENT 'Name of the flagset',
  `label` varchar(255) DEFAULT NULL COMMENT 'Administrative label for search',
  `is_multiple` tinyint NOT NULL DEFAULT 0 COMMENT 'Does this set hold multiple values?',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `UI_name`(name)
)
ENGINE=InnoDB;
