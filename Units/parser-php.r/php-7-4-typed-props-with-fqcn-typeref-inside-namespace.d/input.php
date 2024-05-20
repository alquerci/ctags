<?php

namespace App;

use SomeNamespace\SomeUsedClass;

class SomeClass
{
    private ?SomeUsedClass $someInstance;

    public function __construct(?SomeUsedClass $instance)
    {
        $this->someInstance = $instance;
    }

    public function getSomeInstance($instance = null): ?SomeUsedClass
    {
        return $instance ?? $this->someInstance;
    }

    public function makeSomeInstance(): SomeUsedClass
    {
        $instance = new SomeUsedClass();

        return $instance;
    }
}
