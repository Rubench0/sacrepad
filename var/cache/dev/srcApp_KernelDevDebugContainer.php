<?php

// This file has been auto-generated by the Symfony Dependency Injection Component for internal use.

if (\class_exists(\ContainerB064ZJF\srcApp_KernelDevDebugContainer::class, false)) {
    // no-op
} elseif (!include __DIR__.'/ContainerB064ZJF/srcApp_KernelDevDebugContainer.php') {
    touch(__DIR__.'/ContainerB064ZJF.legacy');

    return;
}

if (!\class_exists(srcApp_KernelDevDebugContainer::class, false)) {
    \class_alias(\ContainerB064ZJF\srcApp_KernelDevDebugContainer::class, srcApp_KernelDevDebugContainer::class, false);
}

return new \ContainerB064ZJF\srcApp_KernelDevDebugContainer(array(
    'container.build_hash' => 'B064ZJF',
    'container.build_id' => '9d2aaded',
    'container.build_time' => 1555900343,
), __DIR__.\DIRECTORY_SEPARATOR.'ContainerB064ZJF');
