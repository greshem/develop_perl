#!/usr/bin/perl
while(<DATA>)
{
if(/\(gimp-(.*?\))/) 
{
	print "\(gimp-".$1,"\n"};
}
## |sort -n |wc
#history -w
__DATA__
(gimp-context-push)
    (gimp-selection-none img)
    (gimp-image-add-layer img pattern 1)
    (gimp-image-add-layer img bg-layer 2)
    (gimp-context-set-background '(255 255 255))
    (gimp-edit-fill bg-layer BACKGROUND-FILL)
    (gimp-edit-clear pattern)
    (gimp-layer-set-lock-alpha logo-layer TRUE)
    (gimp-context-set-foreground '(0 0 0))
    (gimp-edit-fill logo-layer FOREGROUND-FILL)
    (gimp-layer-set-lock-alpha logo-layer FALSE)
    (gimp-drawable-set-visible pattern FALSE)
    (set! layer2 (car (gimp-image-merge-visible-layers img CLIP-TO-IMAGE)))
    (set! layer3 (car (gimp-layer-copy layer2 TRUE)))
    (gimp-image-add-layer img layer3 2)
    (gimp-selection-all img)
    (gimp-context-set-pattern text-pattern)
    (gimp-edit-bucket-fill pattern

