0
1
3
4
5
6
8
9
10
14
15
18
19
20
21
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
40
41
43
44
45
46
47
48
49
50
51
52
53
54
56
57
58
59
60
61
62
64
65
67
68
69
70
71
75
76
77
78
79
80
82
84
85
87
89
90
91
92
93
94
96
97
98
99
101
102
103
104
105
107
108
109
110
112
115
117
118
119
120
121
122
123
124
127
129
130
131
132
133
134
135
137
138
141
143
144
146
147
149
151
152
153
155
156
160
162
163
165
166
167
168
169
170
171
172
174
175
176
177
178
179
181
182
183
184
185
186
187
188
190
192
193
194
195
196
198
199
200
201
207
208
209
212
213
214
215
216
217
218
220
221
222
224
225
226
227
228
231
232
233
235
236
237
238
239
240
241
242
243
244
245
246
247
248
254
255
257
258
259
260
262
263
264
265
266
267
268
269
270
271
272
273
274
275
276
277
278
279
280
281
282
284
285
286
287
288
289
290
291
292
293
294
295
296
297
302
303
305
307
309
310
311
313
314
315
317
320
321
322
324
325
326
327
328
329
330
331
332
333
334
336
337
338
339
340
341
342
343
345
346
347
348
349
350
351
353
354
357
358
359
360
361
362
367
368
370
371
372
373
375
376
377
379
380
381
382
383
384
385
386
387
389
390
396
397
398
399
400
401
402
403
404
406
407
408
409
410
411
412
413
414
415
416
418
419
420
422
423
424
425
426
427
428
429
430
431
433
434
435
438
439
440
442
443
445
446
447
448
449
450
451
452
453
454
455
456
457
458
459
460
461
462
463
464
465
466
467
468
469
471
472
474
475
476
477
478
479
480
481
482
483
484
485
486
487
488
489
490
491
492
494
495
496
497
498
499
500
501
502
504
505
506
507
508
510
511
512
513
514
515
516
517
518
520
522
523
524
526
529
530
531
532
533
538
539
540
541
542
543
544
545
547
548
549
550
551
552
553
554
555
556
557
563
564
565
566
567
568
569
570
572
574
576
577
578
580
581
582
583
584
585
586
587
588
589
590
593
594
595
596
597
598
599
600
602
604
606
607
608
611
614
616
617
618
619
620
622
623
628
629
630
631
632
633
634
635
636
638
640
650
651
652
655
656
658
659
660
666
668
669
670
671
672
673
674
675
677
678
680
681
682
683
684
685
686
688
689
690
691
692
693
694
697
698
700
701
703
704
705
706
707
708
709
711
712
713
714
715
716
717
718
719
720
721
722
723
724
726
728
730
731
732
733
734
735
736
737
738
740
741
742
743
744
745
747
748
749
750
751
752
755
757
758
759
760
762
763
765
766
767
768
769
771
772
773
774
775
776
777
778
779
780
781
782
783
784
785
786
787
788
789
790
791
792
793
794
795
796
797
798
799
800
801
802
804
806
807
808
809
810
811
812
813
814
816
818
819
820
821
822
823
824
825
827
828
829
830
831
833
834
835
836
839
840
842
843
844
845
846
847
848
849
850
851
852
853
854
855
858
859
861
862
863
864
865
866
867
868
870
871
872
873
874
875
876
877
878
879
880
881
882
883
884
885
886
887
888
889
890
891
893
894
895
897
898
900
901
902
903
905
906
908
910
911
914
915
916
917
918
920
921
922
923
924
925
926
927
928
929
930
931
932
933
935
938
939
940
942
946
948
949
950
951
953
954
956
958
959
962
963
964
965
967
968
969
970
971
972
