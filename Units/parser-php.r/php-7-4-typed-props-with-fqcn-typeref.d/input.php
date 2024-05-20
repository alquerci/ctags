<?php

use App\SomeUsedClass;

class SomeClass
{
    private SomeUsedClass $someInstance;

    public function __construct(SomeUsedClass $instance)
    {
        $this->someInstance = $instance;
    }

    public function getSomeInstance(): SomeUsedClass
    {
        return $this->someInstance;
    }
}
