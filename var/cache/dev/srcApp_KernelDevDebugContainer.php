<?php

// This file has been auto-generated by the Symfony Dependency Injection Component for internal use.

if (\class_exists(\ContainerEBN8uwM\srcApp_KernelDevDebugContainer::class, false)) {
    // no-op
} elseif (!include __DIR__.'/ContainerEBN8uwM/srcApp_KernelDevDebugContainer.php') {
    touch(__DIR__.'/ContainerEBN8uwM.legacy');

    return;
}

if (!\class_exists(srcApp_KernelDevDebugContainer::class, false)) {
    \class_alias(\ContainerEBN8uwM\srcApp_KernelDevDebugContainer::class, srcApp_KernelDevDebugContainer::class, false);
}

return new \ContainerEBN8uwM\srcApp_KernelDevDebugContainer(array(
    'container.build_hash' => 'EBN8uwM',
    'container.build_id' => '85473760',
    'container.build_time' => 1556537109,
), __DIR__.\DIRECTORY_SEPARATOR.'ContainerEBN8uwM');
