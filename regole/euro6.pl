0
1
2
3
4
5
7
8
9
10
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
32
33
34
35
36
37
39
40
41
42
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
55
56
57
58
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
99
100
101
102
104
105
106
107
108
109
110
111
112
113
114
115
116
117
118
119
120
121
122
123
124
125
126
127
128
129
130
131
132
133
135
136
137
139
140
141
142
143
144
145
146
147
148
149
150
151
152
153
154
155
156
157
158
159
160
161
162
163
164
165
168
169
170
171
172
173
174
175
176
177
178
179
180
182
183
184
186
188
189
190
191
192
193
194
195
197
198
200
201
202
203
204
205
206
207
208
210
211
212
213
214
215
216
217
219
220
221
222
223
224
225
226
229
230
231
233
234
235
236
237
238
239
240
241
242
244
246
247
248
249
250
251
252
253
255
256
257
258
259
260
261
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
279
280
281
282
283
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
298
299
300
301
302
304
306
308
310
312
313
314
315
316
317
318
319
320
321
322
323
324
325
329
330
331
332
333
334
335
336
337
338
339
340
341
342
343
344
345
346
347
348
349
352
355
356
357
358
359
360
361
362
363
364
365
366
367
368
369
371
372
373
374
375
376
377
378
379
380
381
382
385
386
387
388
389
390
391
392
393
394
395
396
398
401
402
404
405
407
408
410
411
412
413
414
415
417
418
420
421
422
423
424
427
428
430
431
432
433
434
436
437
438
439
440
441
442
443
444
445
446
447
448
449
450
452
453
455
456
457
458
459
460
461
462
464
465
466
467
468
469
470
471
473
474
475
476
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
492
493
494
498
499
500
503
504
505
507
508
509
510
511
513
514
515
516
518
519
520
521
522
523
525
526
527
528
530
531
532
533
534
535
536
537
538
539
540
541
546
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
558
559
560
561
562
563
564
565
566
567
569
570
571
572
573
574
576
577
579
580
582
583
585
586
587
588
589
590
591
592
593
594
595
596
597
599
601
602
603
604
605
606
607
608
610
611
612
613
614
615
617
618
619
620
621
624
625
626
627
628
633
634
636
637
639
641
642
643
644
645
646
647
648
649
651
654
655
657
658
660
661
662
663
664
665
667
668
669
671
672
673
674
676
677
678
679
680
681
682
683
684
685
686
687
688
689
690
692
693
694
695
696
697
698
699
700
701
702
703
708
709
710
712
713
714
715
718
719
720
721
722
723
724
725
726
727
728
729
730
731
732
733
734
735
736
737
738
739
740
741
742
743
744
745
746
747
748
749
750
751
752
753
754
755
756
757
758
759
760
762
763
764
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
803
805
806
807
808
809
810
811
812
813
814
815
816
817
818
819
821
822
823
824
826
827
828
829
831
832
833
834
835
836
837
838
839
840
842
844
847
848
849
850
851
852
853
854
855
856
857
858
859
860
861
862
863
864
866
867
868
869
870
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
892
893
894
896
897
898
899
900
901
902
904
905
907
908
909
910
911
912
913
914
915
916
917
919
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
933
934
936
937
938
940
941
942
943
944
945
946
947
948
949
950
951
952
953
954
955
956
957
958
959
960
961
962
963
964
965
966
967
968
969
970
971
972