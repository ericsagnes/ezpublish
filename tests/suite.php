<?php
/**
 * File containing the eZTestSuite class
 *
 * @copyright Copyright (C) 1999-2008 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU GPLv2
 * @package tests
 */

class eZTestSuite extends ezpTestSuite
{
    public function __construct()
    {
        parent::__construct();
        $this->setName( "eZ Publish Test Suite" );
        $this->addTest( eZKernelTestSuite::suite() );
        $this->addTest( eZUtilsTestSuite::suite() );
        $this->addTest( eZDBTestSuite::suite() );
    }

    public static function suite()
    {
        return new self();
    }
}
?>