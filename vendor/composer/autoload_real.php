<?php

// autoload_real.php @generated by Composer

class ComposerAutoloaderInit882d87a2181759461f5b7a4bba0d9a74
{
    private static $loader;

    public static function loadClassLoader($class)
    {
        if ('Composer\Autoload\ClassLoader' === $class) {
            require __DIR__ . '/ClassLoader.php';
        }
    }

    /**
     * @return \Composer\Autoload\ClassLoader
     */
    public static function getLoader()
    {
        if (null !== self::$loader) {
            return self::$loader;
        }

        require __DIR__ . '/platform_check.php';

        spl_autoload_register(array('ComposerAutoloaderInit882d87a2181759461f5b7a4bba0d9a74', 'loadClassLoader'), true, true);
        self::$loader = $loader = new \Composer\Autoload\ClassLoader(\dirname(__DIR__));
        spl_autoload_unregister(array('ComposerAutoloaderInit882d87a2181759461f5b7a4bba0d9a74', 'loadClassLoader'));

        require __DIR__ . '/autoload_static.php';
        call_user_func(\Composer\Autoload\ComposerStaticInit882d87a2181759461f5b7a4bba0d9a74::getInitializer($loader));

        $loader->register(true);

        return $loader;
    }
}
