<?php

// This file has been auto-generated by the Symfony Dependency Injection Component for internal use.

if (\class_exists(\ContainerT7x2yjV\srcApp_KernelDevDebugContainer::class, false)) {
    // no-op
} elseif (!include __DIR__.'/ContainerT7x2yjV/srcApp_KernelDevDebugContainer.php') {
    touch(__DIR__.'/ContainerT7x2yjV.legacy');

    return;
}

if (!\class_exists(srcApp_KernelDevDebugContainer::class, false)) {
    \class_alias(\ContainerT7x2yjV\srcApp_KernelDevDebugContainer::class, srcApp_KernelDevDebugContainer::class, false);
}

return new \ContainerT7x2yjV\srcApp_KernelDevDebugContainer(array(
    'container.build_hash' => 'T7x2yjV',
    'container.build_id' => 'a24e0ac9',
    'container.build_time' => 1555556551,
), __DIR__.\DIRECTORY_SEPARATOR.'ContainerT7x2yjV');
