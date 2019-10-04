.class public abstract Lio/reactivex/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ae<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static amb(Ljava/lang/Iterable;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 122
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    new-instance v0, Lio/reactivex/internal/operators/c/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lio/reactivex/internal/operators/c/h;-><init>([Lio/reactivex/ae;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static varargs ambArray([Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 149
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    array-length v0, p0

    if-nez v0, :cond_0

    .line 152
    invoke-static {}, Lio/reactivex/z;->empty()Lio/reactivex/z;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 155
    aget-object p0, p0, v0

    invoke-static {p0}, Lio/reactivex/z;->wrap(Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p0

    return-object p0

    .line 157
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/c/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/c/h;-><init>([Lio/reactivex/ae;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static bufferSize()I
    .locals 1

    .line 168
    invoke-static {}, Lio/reactivex/j;->bufferSize()I

    move-result v0

    return v0
.end method

.method public static combineLatest(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/o;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT1;>;",
            "Lio/reactivex/ae<",
            "+TT2;>;",
            "Lio/reactivex/ae<",
            "+TT3;>;",
            "Lio/reactivex/ae<",
            "+TT4;>;",
            "Lio/reactivex/ae<",
            "+TT5;>;",
            "Lio/reactivex/ae<",
            "+TT6;>;",
            "Lio/reactivex/ae<",
            "+TT7;>;",
            "Lio/reactivex/ae<",
            "+TT8;>;",
            "Lio/reactivex/ae<",
            "+TT9;>;",
            "Lio/reactivex/e/o<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 839
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 840
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 841
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 842
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 843
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 844
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 845
    invoke-static {p6, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    .line 846
    invoke-static {p7, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source9 is null"

    .line 847
    invoke-static {p8, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 848
    invoke-static {p9}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/o;)Lio/reactivex/e/h;

    move-result-object p9

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    const/16 v1, 0x9

    new-array v1, v1, [Lio/reactivex/ae;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    const/4 p0, 0x7

    aput-object p7, v1, p0

    const/16 p0, 0x8

    aput-object p8, v1, p0

    invoke-static {p9, v0, v1}, Lio/reactivex/z;->combineLatest(Lio/reactivex/e/h;I[Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/n;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT1;>;",
            "Lio/reactivex/ae<",
            "+TT2;>;",
            "Lio/reactivex/ae<",
            "+TT3;>;",
            "Lio/reactivex/ae<",
            "+TT4;>;",
            "Lio/reactivex/ae<",
            "+TT5;>;",
            "Lio/reactivex/ae<",
            "+TT6;>;",
            "Lio/reactivex/ae<",
            "+TT7;>;",
            "Lio/reactivex/ae<",
            "+TT8;>;",
            "Lio/reactivex/e/n<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 768
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 769
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 770
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 771
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 772
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 773
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 774
    invoke-static {p6, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    .line 775
    invoke-static {p7, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 776
    invoke-static {p8}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/n;)Lio/reactivex/e/h;

    move-result-object p8

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    const/16 v1, 0x8

    new-array v1, v1, [Lio/reactivex/ae;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    const/4 p0, 0x7

    aput-object p7, v1, p0

    invoke-static {p8, v0, v1}, Lio/reactivex/z;->combineLatest(Lio/reactivex/e/h;I[Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/m;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT1;>;",
            "Lio/reactivex/ae<",
            "+TT2;>;",
            "Lio/reactivex/ae<",
            "+TT3;>;",
            "Lio/reactivex/ae<",
            "+TT4;>;",
            "Lio/reactivex/ae<",
            "+TT5;>;",
            "Lio/reactivex/ae<",
            "+TT6;>;",
            "Lio/reactivex/ae<",
            "+TT7;>;",
            "Lio/reactivex/e/m<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 702
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 703
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 704
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 705
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 706
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 707
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 708
    invoke-static {p6, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 709
    invoke-static {p7}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/m;)Lio/reactivex/e/h;

    move-result-object p7

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    const/4 v1, 0x7

    new-array v1, v1, [Lio/reactivex/ae;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    invoke-static {p7, v0, v1}, Lio/reactivex/z;->combineLatest(Lio/reactivex/e/h;I[Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/l;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT1;>;",
            "Lio/reactivex/ae<",
            "+TT2;>;",
            "Lio/reactivex/ae<",
            "+TT3;>;",
            "Lio/reactivex/ae<",
            "+TT4;>;",
            "Lio/reactivex/ae<",
            "+TT5;>;",
            "Lio/reactivex/ae<",
            "+TT6;>;",
            "Lio/reactivex/e/l<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 640
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 641
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 642
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 643
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 644
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 645
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 646
    invoke-static {p6}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/l;)Lio/reactivex/e/h;

    move-result-object p6

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    const/4 v1, 0x6

    new-array v1, v1, [Lio/reactivex/ae;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    invoke-static {p6, v0, v1}, Lio/reactivex/z;->combineLatest(Lio/reactivex/e/h;I[Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/k;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT1;>;",
            "Lio/reactivex/ae<",
            "+TT2;>;",
            "Lio/reactivex/ae<",
            "+TT3;>;",
            "Lio/reactivex/ae<",
            "+TT4;>;",
            "Lio/reactivex/ae<",
            "+TT5;>;",
            "Lio/reactivex/e/k<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 583
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 584
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 585
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 586
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 587
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 588
    invoke-static {p5}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/k;)Lio/reactivex/e/h;

    move-result-object p5

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    const/4 v1, 0x5

    new-array v1, v1, [Lio/reactivex/ae;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    invoke-static {p5, v0, v1}, Lio/reactivex/z;->combineLatest(Lio/reactivex/e/h;I[Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/j;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT1;>;",
            "Lio/reactivex/ae<",
            "+TT2;>;",
            "Lio/reactivex/ae<",
            "+TT3;>;",
            "Lio/reactivex/ae<",
            "+TT4;>;",
            "Lio/reactivex/e/j<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 530
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 531
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 532
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 533
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 534
    invoke-static {p4}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/j;)Lio/reactivex/e/h;

    move-result-object p4

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    const/4 v1, 0x4

    new-array v1, v1, [Lio/reactivex/ae;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    invoke-static {p4, v0, v1}, Lio/reactivex/z;->combineLatest(Lio/reactivex/e/h;I[Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/i;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT1;>;",
            "Lio/reactivex/ae<",
            "+TT2;>;",
            "Lio/reactivex/ae<",
            "+TT3;>;",
            "Lio/reactivex/e/i<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 482
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 483
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 484
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 485
    invoke-static {p3}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/i;)Lio/reactivex/e/h;

    move-result-object p3

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [Lio/reactivex/ae;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    invoke-static {p3, v0, v1}, Lio/reactivex/z;->combineLatest(Lio/reactivex/e/h;I[Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/c;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT1;>;",
            "Lio/reactivex/ae<",
            "+TT2;>;",
            "Lio/reactivex/e/c<",
            "-TT1;-TT2;+TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 438
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 439
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 440
    invoke-static {p2}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/c;)Lio/reactivex/e/h;

    move-result-object p2

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Lio/reactivex/ae;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {p2, v0, v1}, Lio/reactivex/z;->combineLatest(Lio/reactivex/e/h;I[Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static varargs combineLatest(Lio/reactivex/e/h;I[Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I[",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    .line 211
    invoke-static {p2, p0, p1}, Lio/reactivex/z;->combineLatest([Lio/reactivex/ae;Lio/reactivex/e/h;I)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest(Ljava/lang/Iterable;Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    .line 253
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    invoke-static {p0, p1, v0}, Lio/reactivex/z;->combineLatest(Ljava/lang/Iterable;Lio/reactivex/e/h;I)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest(Ljava/lang/Iterable;Lio/reactivex/e/h;I)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 298
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 299
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 300
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    shl-int/lit8 v5, p2, 0x1

    .line 304
    new-instance p2, Lio/reactivex/internal/operators/c/u;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/c/u;-><init>([Lio/reactivex/ae;Ljava/lang/Iterable;Lio/reactivex/e/h;IZ)V

    invoke-static {p2}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest([Lio/reactivex/ae;Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    .line 346
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    invoke-static {p0, p1, v0}, Lio/reactivex/z;->combineLatest([Lio/reactivex/ae;Lio/reactivex/e/h;I)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest([Lio/reactivex/ae;Lio/reactivex/e/h;I)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 391
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 392
    array-length v0, p0

    if-nez v0, :cond_0

    .line 393
    invoke-static {}, Lio/reactivex/z;->empty()Lio/reactivex/z;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "combiner is null"

    .line 395
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 396
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    shl-int/lit8 v5, p2, 0x1

    .line 400
    new-instance p2, Lio/reactivex/internal/operators/c/u;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/c/u;-><init>([Lio/reactivex/ae;Ljava/lang/Iterable;Lio/reactivex/e/h;IZ)V

    invoke-static {p2}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static varargs combineLatestDelayError(Lio/reactivex/e/h;I[Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I[",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    .line 935
    invoke-static {p2, p0, p1}, Lio/reactivex/z;->combineLatestDelayError([Lio/reactivex/ae;Lio/reactivex/e/h;I)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatestDelayError(Ljava/lang/Iterable;Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    .line 1031
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    invoke-static {p0, p1, v0}, Lio/reactivex/z;->combineLatestDelayError(Ljava/lang/Iterable;Lio/reactivex/e/h;I)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatestDelayError(Ljava/lang/Iterable;Lio/reactivex/e/h;I)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1077
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 1078
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 1079
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    shl-int/lit8 v5, p2, 0x1

    .line 1083
    new-instance p2, Lio/reactivex/internal/operators/c/u;

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v1, p2

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/c/u;-><init>([Lio/reactivex/ae;Ljava/lang/Iterable;Lio/reactivex/e/h;IZ)V

    invoke-static {p2}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatestDelayError([Lio/reactivex/ae;Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    .line 890
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    invoke-static {p0, p1, v0}, Lio/reactivex/z;->combineLatestDelayError([Lio/reactivex/ae;Lio/reactivex/e/h;I)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatestDelayError([Lio/reactivex/ae;Lio/reactivex/e/h;I)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    .line 981
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    const-string v0, "combiner is null"

    .line 982
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 983
    array-length v0, p0

    if-nez v0, :cond_0

    .line 984
    invoke-static {}, Lio/reactivex/z;->empty()Lio/reactivex/z;

    move-result-object p0

    return-object p0

    :cond_0
    shl-int/lit8 v4, p2, 0x1

    .line 988
    new-instance p2, Lio/reactivex/internal/operators/c/u;

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p2

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/c/u;-><init>([Lio/reactivex/ae;Ljava/lang/Iterable;Lio/reactivex/e/h;IZ)V

    invoke-static {p2}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 1128
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    invoke-static {p0, v0}, Lio/reactivex/z;->concat(Lio/reactivex/ae;I)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lio/reactivex/ae;I)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;I)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1155
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 1156
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 1157
    new-instance v0, Lio/reactivex/internal/operators/c/v;

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    invoke-direct {v0, p0, v1, p1, v2}, Lio/reactivex/internal/operators/c/v;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;ILio/reactivex/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lio/reactivex/ae;Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1184
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1185
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/ae;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 1186
    invoke-static {v0}, Lio/reactivex/z;->concatArray([Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1217
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1218
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 1219
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/ae;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 1220
    invoke-static {v0}, Lio/reactivex/z;->concatArray([Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1253
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1254
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 1255
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 1256
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/reactivex/ae;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 1257
    invoke-static {v0}, Lio/reactivex/z;->concatArray([Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Ljava/lang/Iterable;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1104
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1105
    invoke-static {p0}, Lio/reactivex/z;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/z;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v0

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lio/reactivex/z;->concatMapDelayError(Lio/reactivex/e/h;IZ)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArray([Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 1279
    array-length v0, p0

    if-nez v0, :cond_0

    .line 1280
    invoke-static {}, Lio/reactivex/z;->empty()Lio/reactivex/z;

    move-result-object p0

    return-object p0

    .line 1282
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 1283
    aget-object p0, p0, v0

    invoke-static {p0}, Lio/reactivex/z;->wrap(Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p0

    return-object p0

    .line 1285
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/c/v;

    invoke-static {p0}, Lio/reactivex/z;->fromArray([Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v1

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v2

    sget-object v3, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    invoke-direct {v0, p0, v1, v2, v3}, Lio/reactivex/internal/operators/c/v;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;ILio/reactivex/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArrayDelayError([Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 1306
    array-length v0, p0

    if-nez v0, :cond_0

    .line 1307
    invoke-static {}, Lio/reactivex/z;->empty()Lio/reactivex/z;

    move-result-object p0

    return-object p0

    .line 1309
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 1310
    aget-object p0, p0, v0

    invoke-static {p0}, Lio/reactivex/z;->wrap(Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p0

    return-object p0

    .line 1312
    :cond_1
    invoke-static {p0}, Lio/reactivex/z;->fromArray([Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/z;->concatDelayError(Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArrayEager(II[Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II[",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 1362
    invoke-static {p2}, Lio/reactivex/z;->fromArray([Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p2

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p0, p1, v1}, Lio/reactivex/z;->concatMapEagerDelayError(Lio/reactivex/e/h;IIZ)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArrayEager([Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 1335
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v1

    invoke-static {v0, v1, p0}, Lio/reactivex/z;->concatArrayEager(II[Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArrayEagerDelayError(II[Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II[",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 1414
    invoke-static {p2}, Lio/reactivex/z;->fromArray([Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p2

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p0, p1, v1}, Lio/reactivex/z;->concatMapEagerDelayError(Lio/reactivex/e/h;IIZ)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArrayEagerDelayError([Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 1386
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v1

    invoke-static {v0, v1, p0}, Lio/reactivex/z;->concatArrayEagerDelayError(II[Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static concatDelayError(Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 1456
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lio/reactivex/z;->concatDelayError(Lio/reactivex/ae;IZ)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static concatDelayError(Lio/reactivex/ae;IZ)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;IZ)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1481
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch is null"

    .line 1482
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 1483
    new-instance v0, Lio/reactivex/internal/operators/c/v;

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v1

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    :goto_0
    invoke-direct {v0, p0, v1, p1, p2}, Lio/reactivex/internal/operators/c/v;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;ILio/reactivex/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static concatDelayError(Ljava/lang/Iterable;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1435
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1436
    invoke-static {p0}, Lio/reactivex/z;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/z;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/z;->concatDelayError(Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static concatEager(Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 1506
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/reactivex/z;->concatEager(Lio/reactivex/ae;II)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static concatEager(Lio/reactivex/ae;II)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;II)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 1533
    invoke-static {p0}, Lio/reactivex/z;->wrap(Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lio/reactivex/z;->concatMapEager(Lio/reactivex/e/h;II)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static concatEager(Ljava/lang/Iterable;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 1556
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/reactivex/z;->concatEager(Ljava/lang/Iterable;II)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static concatEager(Ljava/lang/Iterable;II)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;II)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 1583
    invoke-static {p0}, Lio/reactivex/z;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/z;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lio/reactivex/z;->concatMapEagerDelayError(Lio/reactivex/e/h;IIZ)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lio/reactivex/ac;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ac<",
            "TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    .line 1634
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1635
    new-instance v0, Lio/reactivex/internal/operators/c/ac;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/c/ac;-><init>(Lio/reactivex/ac;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static defer(Ljava/util/concurrent/Callable;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "supplier is null"

    .line 1666
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1667
    new-instance v0, Lio/reactivex/internal/operators/c/af;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/c/af;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method private doOnEach(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-TT;>;",
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/e/a;",
            "Lio/reactivex/e/a;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 8135
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 8136
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 8137
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onAfterTerminate is null"

    .line 8138
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8139
    new-instance v0, Lio/reactivex/internal/operators/c/ao;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/c/ao;-><init>(Lio/reactivex/ae;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public static empty()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 1690
    sget-object v0, Lio/reactivex/internal/operators/c/at;->INSTANCE:Lio/reactivex/z;

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public static error(Ljava/lang/Throwable;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "exception is null"

    .line 1741
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1742
    invoke-static {p0}, Lio/reactivex/internal/a/a;->justCallable(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/z;->error(Ljava/util/concurrent/Callable;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static error(Ljava/util/concurrent/Callable;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "errorSupplier is null"

    .line 1715
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1716
    new-instance v0, Lio/reactivex/internal/operators/c/au;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/c/au;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static varargs fromArray([Ljava/lang/Object;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "items is null"

    .line 1765
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1766
    array-length v0, p0

    if-nez v0, :cond_0

    .line 1767
    invoke-static {}, Lio/reactivex/z;->empty()Lio/reactivex/z;

    move-result-object p0

    return-object p0

    .line 1769
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 1770
    aget-object p0, p0, v0

    invoke-static {p0}, Lio/reactivex/z;->just(Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p0

    return-object p0

    .line 1772
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/c/bc;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/c/bc;-><init>([Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "supplier is null"

    .line 1807
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1808
    new-instance v0, Lio/reactivex/internal/operators/c/bd;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/c/bd;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static fromFuture(Ljava/util/concurrent/Future;)Lio/reactivex/z;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "future is null"

    .line 1841
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1842
    new-instance v0, Lio/reactivex/internal/operators/c/be;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lio/reactivex/internal/operators/c/be;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static fromFuture(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "future is null"

    .line 1879
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    .line 1880
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1881
    new-instance v0, Lio/reactivex/internal/operators/c/be;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/c/be;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static fromFuture(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 1921
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1922
    invoke-static {p0, p1, p2, p3}, Lio/reactivex/z;->fromFuture(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;

    move-result-object p0

    .line 1923
    invoke-virtual {p0, p4}, Lio/reactivex/z;->subscribeOn(Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static fromFuture(Ljava/util/concurrent/Future;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 1957
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1958
    invoke-static {p0}, Lio/reactivex/z;->fromFuture(Ljava/util/concurrent/Future;)Lio/reactivex/z;

    move-result-object p0

    .line 1959
    invoke-virtual {p0, p1}, Lio/reactivex/z;->subscribeOn(Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static fromIterable(Ljava/lang/Iterable;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    .line 1983
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1984
    new-instance v0, Lio/reactivex/internal/operators/c/bf;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/c/bf;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static fromPublisher(Lorg/b/b;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/b<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "publisher is null"

    .line 2020
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2021
    new-instance v0, Lio/reactivex/internal/operators/c/bg;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/c/bg;-><init>(Lorg/b/b;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static generate(Lio/reactivex/e/g;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/g<",
            "Lio/reactivex/i<",
            "TT;>;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "generator is null"

    .line 2049
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2050
    invoke-static {}, Lio/reactivex/internal/a/a;->nullSupplier()Ljava/util/concurrent/Callable;

    move-result-object v0

    .line 2051
    invoke-static {p0}, Lio/reactivex/internal/operators/c/bo;->simpleGenerator(Lio/reactivex/e/g;)Lio/reactivex/e/c;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v1

    .line 2050
    invoke-static {v0, p0, v1}, Lio/reactivex/z;->generate(Ljava/util/concurrent/Callable;Lio/reactivex/e/c;Lio/reactivex/e/g;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static generate(Ljava/util/concurrent/Callable;Lio/reactivex/e/b;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "Lio/reactivex/e/b<",
            "TS;",
            "Lio/reactivex/i<",
            "TT;>;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "generator is null"

    .line 2081
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2082
    invoke-static {p1}, Lio/reactivex/internal/operators/c/bo;->simpleBiGenerator(Lio/reactivex/e/b;)Lio/reactivex/e/c;

    move-result-object p1

    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lio/reactivex/z;->generate(Ljava/util/concurrent/Callable;Lio/reactivex/e/c;Lio/reactivex/e/g;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static generate(Ljava/util/concurrent/Callable;Lio/reactivex/e/b;Lio/reactivex/e/g;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "Lio/reactivex/e/b<",
            "TS;",
            "Lio/reactivex/i<",
            "TT;>;>;",
            "Lio/reactivex/e/g<",
            "-TS;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "generator is null"

    .line 2117
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2118
    invoke-static {p1}, Lio/reactivex/internal/operators/c/bo;->simpleBiGenerator(Lio/reactivex/e/b;)Lio/reactivex/e/c;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lio/reactivex/z;->generate(Ljava/util/concurrent/Callable;Lio/reactivex/e/c;Lio/reactivex/e/g;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static generate(Ljava/util/concurrent/Callable;Lio/reactivex/e/c;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "Lio/reactivex/e/c<",
            "TS;",
            "Lio/reactivex/i<",
            "TT;>;TS;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 2148
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lio/reactivex/z;->generate(Ljava/util/concurrent/Callable;Lio/reactivex/e/c;Lio/reactivex/e/g;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static generate(Ljava/util/concurrent/Callable;Lio/reactivex/e/c;Lio/reactivex/e/g;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "Lio/reactivex/e/c<",
            "TS;",
            "Lio/reactivex/i<",
            "TT;>;TS;>;",
            "Lio/reactivex/e/g<",
            "-TS;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initialState is null"

    .line 2182
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "generator is null"

    .line 2183
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "disposeState is null"

    .line 2184
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2185
    new-instance v0, Lio/reactivex/internal/operators/c/bi;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/c/bi;-><init>(Ljava/util/concurrent/Callable;Lio/reactivex/e/c;Lio/reactivex/e/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2212
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lio/reactivex/z;->interval(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static interval(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 2242
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2243
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2245
    new-instance v0, Lio/reactivex/internal/operators/c/bp;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object v1, v0

    move-wide v2, p0

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/c/bp;-><init>(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2267
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lio/reactivex/z;->interval(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static interval(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    .line 2292
    invoke-static/range {v0 .. v5}, Lio/reactivex/z;->interval(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static intervalRange(JJJJLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2315
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v9

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lio/reactivex/z;->intervalRange(JJJJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public static intervalRange(JJJJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-wide/from16 v0, p4

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-ltz v4, :cond_3

    cmp-long v4, p2, v2

    if-nez v4, :cond_0

    .line 2344
    invoke-static {}, Lio/reactivex/z;->empty()Lio/reactivex/z;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v9, v10}, Lio/reactivex/z;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v4, 0x1

    sub-long v4, p2, v4

    add-long/2addr v4, p0

    cmp-long v6, p0, v2

    if-lez v6, :cond_2

    cmp-long v6, v4, v2

    if-ltz v6, :cond_1

    goto :goto_0

    .line 2349
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Overflow! start + count is bigger than Long.MAX_VALUE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const-string v6, "unit is null"

    .line 2351
    invoke-static {v9, v6}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v6, "scheduler is null"

    .line 2352
    invoke-static {v10, v6}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2354
    new-instance v11, Lio/reactivex/internal/operators/c/bq;

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-wide/from16 v0, p6

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    move-object v0, v11

    move-wide v1, p0

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v12

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lio/reactivex/internal/operators/c/bq;-><init>(JJJJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V

    invoke-static {v11}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object v0

    return-object v0

    .line 2340
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "count >= 0 required but it was "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static just(Ljava/lang/Object;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    .line 2389
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2390
    new-instance v0, Lio/reactivex/internal/operators/c/bs;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/c/bs;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    .line 2416
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 2417
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 2419
    invoke-static {v0}, Lio/reactivex/z;->fromArray([Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    .line 2447
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 2448
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 2449
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 2451
    invoke-static {v0}, Lio/reactivex/z;->fromArray([Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    .line 2481
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 2482
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 2483
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    .line 2484
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 2486
    invoke-static {v0}, Lio/reactivex/z;->fromArray([Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    .line 2518
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 2519
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 2520
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    .line 2521
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    .line 2522
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    .line 2524
    invoke-static {v0}, Lio/reactivex/z;->fromArray([Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    .line 2558
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 2559
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 2560
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    .line 2561
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    .line 2562
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    .line 2563
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    .line 2565
    invoke-static {v0}, Lio/reactivex/z;->fromArray([Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    .line 2601
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 2602
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 2603
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    .line 2604
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    .line 2605
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    .line 2606
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item7 is null"

    .line 2607
    invoke-static {p6, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    .line 2609
    invoke-static {v0}, Lio/reactivex/z;->fromArray([Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    .line 2647
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 2648
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 2649
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    .line 2650
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    .line 2651
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    .line 2652
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item7 is null"

    .line 2653
    invoke-static {p6, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item8 is null"

    .line 2654
    invoke-static {p7, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    .line 2656
    invoke-static {v0}, Lio/reactivex/z;->fromArray([Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    .line 2696
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 2697
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 2698
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    .line 2699
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    .line 2700
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    .line 2701
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item7 is null"

    .line 2702
    invoke-static {p6, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item8 is null"

    .line 2703
    invoke-static {p7, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item9 is null"

    .line 2704
    invoke-static {p8, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    const/16 p0, 0x8

    aput-object p8, v0, p0

    .line 2706
    invoke-static {v0}, Lio/reactivex/z;->fromArray([Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    .line 2748
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 2749
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 2750
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    .line 2751
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    .line 2752
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    .line 2753
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item7 is null"

    .line 2754
    invoke-static {p6, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item8 is null"

    .line 2755
    invoke-static {p7, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item9 is null"

    .line 2756
    invoke-static {p8, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item10 is null"

    .line 2757
    invoke-static {p9, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    const/16 p0, 0x8

    aput-object p8, v0, p0

    const/16 p0, 0x9

    aput-object p9, v0, p0

    .line 2759
    invoke-static {v0}, Lio/reactivex/z;->fromArray([Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 2979
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2980
    new-instance v0, Lio/reactivex/internal/operators/c/aw;

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v3

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v6

    const/4 v4, 0x0

    const v5, 0x7fffffff

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/c/aw;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;ZII)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lio/reactivex/ae;I)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;I)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 3027
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 3028
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 3029
    new-instance v0, Lio/reactivex/internal/operators/c/aw;

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v3

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v6

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/c/aw;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;ZII)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lio/reactivex/ae;Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 3070
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 3071
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v1, v0, [Lio/reactivex/ae;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    .line 3072
    invoke-static {v1}, Lio/reactivex/z;->fromArray([Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, Lio/reactivex/z;->flatMap(Lio/reactivex/e/h;ZI)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 3115
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 3116
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3117
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v1, v0, [Lio/reactivex/ae;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    .line 3118
    invoke-static {v1}, Lio/reactivex/z;->fromArray([Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, Lio/reactivex/z;->flatMap(Lio/reactivex/e/h;ZI)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 3165
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 3166
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3167
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 3168
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v1, v0, [Lio/reactivex/ae;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    .line 3169
    invoke-static {v1}, Lio/reactivex/z;->fromArray([Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, Lio/reactivex/z;->flatMap(Lio/reactivex/e/h;ZI)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Ljava/lang/Iterable;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 2893
    invoke-static {p0}, Lio/reactivex/z;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/z;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/z;->flatMap(Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Ljava/lang/Iterable;I)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;I)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 2938
    invoke-static {p0}, Lio/reactivex/z;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/z;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/reactivex/z;->flatMap(Lio/reactivex/e/h;I)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Ljava/lang/Iterable;II)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;II)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 2806
    invoke-static {p0}, Lio/reactivex/z;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/z;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/reactivex/z;->flatMap(Lio/reactivex/e/h;ZII)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static varargs mergeArray(II[Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II[",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 2853
    invoke-static {p2}, Lio/reactivex/z;->fromArray([Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p2

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p0, p1}, Lio/reactivex/z;->flatMap(Lio/reactivex/e/h;ZII)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static varargs mergeArray([Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 3208
    invoke-static {p0}, Lio/reactivex/z;->fromArray([Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object v0

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v1

    array-length p0, p0

    invoke-virtual {v0, v1, p0}, Lio/reactivex/z;->flatMap(Lio/reactivex/e/h;I)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static varargs mergeArrayDelayError(II[Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II[",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 3312
    invoke-static {p2}, Lio/reactivex/z;->fromArray([Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p2

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1, p0, p1}, Lio/reactivex/z;->flatMap(Lio/reactivex/e/h;ZII)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static varargs mergeArrayDelayError([Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 3567
    invoke-static {p0}, Lio/reactivex/z;->fromArray([Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object v0

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v1

    array-length p0, p0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lio/reactivex/z;->flatMap(Lio/reactivex/e/h;ZI)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 3378
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3379
    new-instance v0, Lio/reactivex/internal/operators/c/aw;

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v3

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v6

    const/4 v4, 0x1

    const v5, 0x7fffffff

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/c/aw;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;ZII)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Lio/reactivex/ae;I)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;I)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 3415
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 3416
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 3417
    new-instance v0, Lio/reactivex/internal/operators/c/aw;

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v3

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v6

    const/4 v4, 0x1

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/c/aw;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;ZII)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Lio/reactivex/ae;Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 3450
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 3451
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v1, v0, [Lio/reactivex/ae;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    .line 3452
    invoke-static {v1}, Lio/reactivex/z;->fromArray([Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p1

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v1

    invoke-virtual {p1, v1, p0, v0}, Lio/reactivex/z;->flatMap(Lio/reactivex/e/h;ZI)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 3488
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 3489
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3490
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v1, v0, [Lio/reactivex/ae;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p1, 0x2

    aput-object p2, v1, p1

    .line 3491
    invoke-static {v1}, Lio/reactivex/z;->fromArray([Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p1

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object p2

    invoke-virtual {p1, p2, p0, v0}, Lio/reactivex/z;->flatMap(Lio/reactivex/e/h;ZI)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 3531
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 3532
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3533
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 3534
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v1, v0, [Lio/reactivex/ae;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p1, 0x2

    aput-object p2, v1, p1

    const/4 p1, 0x3

    aput-object p3, v1, p1

    .line 3535
    invoke-static {v1}, Lio/reactivex/z;->fromArray([Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p1

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object p2

    invoke-virtual {p1, p2, p0, v0}, Lio/reactivex/z;->flatMap(Lio/reactivex/e/h;ZI)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Ljava/lang/Iterable;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 3240
    invoke-static {p0}, Lio/reactivex/z;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/z;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/z;->flatMap(Lio/reactivex/e/h;Z)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Ljava/lang/Iterable;I)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;I)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 3346
    invoke-static {p0}, Lio/reactivex/z;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/z;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/z;->flatMap(Lio/reactivex/e/h;ZI)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Ljava/lang/Iterable;II)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;II)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 3276
    invoke-static {p0}, Lio/reactivex/z;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/z;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/reactivex/z;->flatMap(Lio/reactivex/e/h;ZII)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static never()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 3590
    sget-object v0, Lio/reactivex/internal/operators/c/cc;->INSTANCE:Lio/reactivex/z;

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public static range(II)Lio/reactivex/z;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/z<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_3

    if-nez p1, :cond_0

    .line 3619
    invoke-static {}, Lio/reactivex/z;->empty()Lio/reactivex/z;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3622
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/z;->just(Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p0

    return-object p0

    :cond_1
    int-to-long v0, p0

    add-int/lit8 v2, p1, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 3627
    new-instance v0, Lio/reactivex/internal/operators/c/ck;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/ck;-><init>(II)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0

    .line 3625
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3616
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "count >= 0 required but it was "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static rangeLong(JJ)Lio/reactivex/z;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lio/reactivex/z<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_4

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    .line 3657
    invoke-static {}, Lio/reactivex/z;->empty()Lio/reactivex/z;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v2, 0x1

    cmp-long v4, p2, v2

    if-nez v4, :cond_1

    .line 3661
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/z;->just(Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p0

    return-object p0

    :cond_1
    sub-long v2, p2, v2

    add-long/2addr v2, p0

    cmp-long v4, p0, v0

    if-lez v4, :cond_3

    cmp-long v4, v2, v0

    if-ltz v4, :cond_2

    goto :goto_0

    .line 3666
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Overflow! start + count is bigger than Long.MAX_VALUE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3669
    :cond_3
    :goto_0
    new-instance v0, Lio/reactivex/internal/operators/c/cl;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/c/cl;-><init>(JJ)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0

    .line 3653
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "count >= 0 required but it was "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sequenceEqual(Lio/reactivex/ae;Lio/reactivex/ae;)Lio/reactivex/ai;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/ai<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 3694
    invoke-static {}, Lio/reactivex/internal/a/b;->equalsPredicate()Lio/reactivex/e/d;

    move-result-object v0

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lio/reactivex/z;->sequenceEqual(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/d;I)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static sequenceEqual(Lio/reactivex/ae;Lio/reactivex/ae;I)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/ae<",
            "+TT;>;I)",
            "Lio/reactivex/ai<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 3788
    invoke-static {}, Lio/reactivex/internal/a/b;->equalsPredicate()Lio/reactivex/e/d;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lio/reactivex/z;->sequenceEqual(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/d;I)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static sequenceEqual(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/d;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/e/d<",
            "-TT;-TT;>;)",
            "Lio/reactivex/ai<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 3724
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lio/reactivex/z;->sequenceEqual(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/d;I)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static sequenceEqual(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/d;I)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/e/d<",
            "-TT;-TT;>;I)",
            "Lio/reactivex/ai<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 3756
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 3757
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isEqual is null"

    .line 3758
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 3759
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 3760
    new-instance v0, Lio/reactivex/internal/operators/c/dd;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/c/dd;-><init>(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/d;I)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static switchOnNext(Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 3855
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    invoke-static {p0, v0}, Lio/reactivex/z;->switchOnNext(Lio/reactivex/ae;I)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static switchOnNext(Lio/reactivex/ae;I)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;I)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 3822
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 3823
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 3824
    new-instance v0, Lio/reactivex/internal/operators/c/do;

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lio/reactivex/internal/operators/c/do;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;IZ)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static switchOnNextDelayError(Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 3888
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    invoke-static {p0, v0}, Lio/reactivex/z;->switchOnNextDelayError(Lio/reactivex/ae;I)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static switchOnNextDelayError(Lio/reactivex/ae;I)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;I)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 3924
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 3925
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 3926
    new-instance v0, Lio/reactivex/internal/operators/c/do;

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p1, v2}, Lio/reactivex/internal/operators/c/do;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;IZ)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method private timeout0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ae;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "timeUnit is null"

    .line 13805
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 13806
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13807
    new-instance v0, Lio/reactivex/internal/operators/c/ea;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p5

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/c/ea;-><init>(Lio/reactivex/z;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Lio/reactivex/ae;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method private timeout0(Lio/reactivex/ae;Lio/reactivex/e/h;Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "TU;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "TV;>;>;",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "itemTimeoutIndicator is null"

    .line 13814
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13815
    new-instance v0, Lio/reactivex/internal/operators/c/dz;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/c/dz;-><init>(Lio/reactivex/z;Lio/reactivex/ae;Lio/reactivex/e/h;Lio/reactivex/ae;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public static timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 3948
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lio/reactivex/z;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 3977
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 3978
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3980
    new-instance v0, Lio/reactivex/internal/operators/c/eb;

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/c/eb;-><init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static unsafeCreate(Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    .line 3998
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3999
    instance-of v0, p0, Lio/reactivex/z;

    if-nez v0, :cond_0

    .line 4002
    new-instance v0, Lio/reactivex/internal/operators/c/bh;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/c/bh;-><init>(Lio/reactivex/ae;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0

    .line 4000
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsafeCreate(Observable) should be upgraded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static using(Ljava/util/concurrent/Callable;Lio/reactivex/e/h;Lio/reactivex/e/g;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TD;>;",
            "Lio/reactivex/e/h<",
            "-TD;+",
            "Lio/reactivex/ae<",
            "+TT;>;>;",
            "Lio/reactivex/e/g<",
            "-TD;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 4029
    invoke-static {p0, p1, p2, v0}, Lio/reactivex/z;->using(Ljava/util/concurrent/Callable;Lio/reactivex/e/h;Lio/reactivex/e/g;Z)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static using(Ljava/util/concurrent/Callable;Lio/reactivex/e/h;Lio/reactivex/e/g;Z)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TD;>;",
            "Lio/reactivex/e/h<",
            "-TD;+",
            "Lio/reactivex/ae<",
            "+TT;>;>;",
            "Lio/reactivex/e/g<",
            "-TD;>;Z)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resourceSupplier is null"

    .line 4063
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sourceSupplier is null"

    .line 4064
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "disposer is null"

    .line 4065
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4066
    new-instance v0, Lio/reactivex/internal/operators/c/ef;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/c/ef;-><init>(Ljava/util/concurrent/Callable;Lio/reactivex/e/h;Lio/reactivex/e/g;Z)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    .line 4085
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4086
    instance-of v0, p0, Lio/reactivex/z;

    if-eqz v0, :cond_0

    .line 4087
    check-cast p0, Lio/reactivex/z;

    invoke-static {p0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0

    .line 4089
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/c/bh;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/c/bh;-><init>(Lio/reactivex/ae;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/o;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT1;>;",
            "Lio/reactivex/ae<",
            "+TT2;>;",
            "Lio/reactivex/ae<",
            "+TT3;>;",
            "Lio/reactivex/ae<",
            "+TT4;>;",
            "Lio/reactivex/ae<",
            "+TT5;>;",
            "Lio/reactivex/ae<",
            "+TT6;>;",
            "Lio/reactivex/ae<",
            "+TT7;>;",
            "Lio/reactivex/ae<",
            "+TT8;>;",
            "Lio/reactivex/ae<",
            "+TT9;>;",
            "Lio/reactivex/e/o<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 4865
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 4866
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 4867
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4868
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 4869
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 4870
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 4871
    invoke-static {p6, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    .line 4872
    invoke-static {p7, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source9 is null"

    .line 4873
    invoke-static {p8, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4874
    invoke-static {p9}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/o;)Lio/reactivex/e/h;

    move-result-object p9

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    const/16 v1, 0x9

    new-array v1, v1, [Lio/reactivex/ae;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    const/4 p0, 0x7

    aput-object p7, v1, p0

    const/16 p0, 0x8

    aput-object p8, v1, p0

    invoke-static {p9, v2, v0, v1}, Lio/reactivex/z;->zipArray(Lio/reactivex/e/h;ZI[Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/n;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT1;>;",
            "Lio/reactivex/ae<",
            "+TT2;>;",
            "Lio/reactivex/ae<",
            "+TT3;>;",
            "Lio/reactivex/ae<",
            "+TT4;>;",
            "Lio/reactivex/ae<",
            "+TT5;>;",
            "Lio/reactivex/ae<",
            "+TT6;>;",
            "Lio/reactivex/ae<",
            "+TT7;>;",
            "Lio/reactivex/ae<",
            "+TT8;>;",
            "Lio/reactivex/e/n<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 4781
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 4782
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 4783
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4784
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 4785
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 4786
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 4787
    invoke-static {p6, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    .line 4788
    invoke-static {p7, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4789
    invoke-static {p8}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/n;)Lio/reactivex/e/h;

    move-result-object p8

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    const/16 v1, 0x8

    new-array v1, v1, [Lio/reactivex/ae;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    const/4 p0, 0x7

    aput-object p7, v1, p0

    invoke-static {p8, v2, v0, v1}, Lio/reactivex/z;->zipArray(Lio/reactivex/e/h;ZI[Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/m;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT1;>;",
            "Lio/reactivex/ae<",
            "+TT2;>;",
            "Lio/reactivex/ae<",
            "+TT3;>;",
            "Lio/reactivex/ae<",
            "+TT4;>;",
            "Lio/reactivex/ae<",
            "+TT5;>;",
            "Lio/reactivex/ae<",
            "+TT6;>;",
            "Lio/reactivex/ae<",
            "+TT7;>;",
            "Lio/reactivex/e/m<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 4701
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 4702
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 4703
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4704
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 4705
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 4706
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 4707
    invoke-static {p6, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4708
    invoke-static {p7}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/m;)Lio/reactivex/e/h;

    move-result-object p7

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    const/4 v1, 0x7

    new-array v1, v1, [Lio/reactivex/ae;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    invoke-static {p7, v2, v0, v1}, Lio/reactivex/z;->zipArray(Lio/reactivex/e/h;ZI[Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/l;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT1;>;",
            "Lio/reactivex/ae<",
            "+TT2;>;",
            "Lio/reactivex/ae<",
            "+TT3;>;",
            "Lio/reactivex/ae<",
            "+TT4;>;",
            "Lio/reactivex/ae<",
            "+TT5;>;",
            "Lio/reactivex/ae<",
            "+TT6;>;",
            "Lio/reactivex/e/l<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 4625
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 4626
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 4627
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4628
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 4629
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 4630
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4631
    invoke-static {p6}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/l;)Lio/reactivex/e/h;

    move-result-object p6

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    const/4 v1, 0x6

    new-array v1, v1, [Lio/reactivex/ae;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    invoke-static {p6, v2, v0, v1}, Lio/reactivex/z;->zipArray(Lio/reactivex/e/h;ZI[Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/k;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT1;>;",
            "Lio/reactivex/ae<",
            "+TT2;>;",
            "Lio/reactivex/ae<",
            "+TT3;>;",
            "Lio/reactivex/ae<",
            "+TT4;>;",
            "Lio/reactivex/ae<",
            "+TT5;>;",
            "Lio/reactivex/e/k<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 4554
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 4555
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 4556
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4557
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 4558
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4559
    invoke-static {p5}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/k;)Lio/reactivex/e/h;

    move-result-object p5

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    const/4 v1, 0x5

    new-array v1, v1, [Lio/reactivex/ae;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    invoke-static {p5, v2, v0, v1}, Lio/reactivex/z;->zipArray(Lio/reactivex/e/h;ZI[Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/j;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT1;>;",
            "Lio/reactivex/ae<",
            "+TT2;>;",
            "Lio/reactivex/ae<",
            "+TT3;>;",
            "Lio/reactivex/ae<",
            "+TT4;>;",
            "Lio/reactivex/e/j<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 4486
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 4487
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 4488
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4489
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4490
    invoke-static {p4}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/j;)Lio/reactivex/e/h;

    move-result-object p4

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    const/4 v1, 0x4

    new-array v1, v1, [Lio/reactivex/ae;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    invoke-static {p4, v2, v0, v1}, Lio/reactivex/z;->zipArray(Lio/reactivex/e/h;ZI[Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/i;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT1;>;",
            "Lio/reactivex/ae<",
            "+TT2;>;",
            "Lio/reactivex/ae<",
            "+TT3;>;",
            "Lio/reactivex/e/i<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 4422
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 4423
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 4424
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4425
    invoke-static {p3}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/i;)Lio/reactivex/e/h;

    move-result-object p3

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [Lio/reactivex/ae;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    invoke-static {p3, v2, v0, v1}, Lio/reactivex/z;->zipArray(Lio/reactivex/e/h;ZI[Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/c;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT1;>;",
            "Lio/reactivex/ae<",
            "+TT2;>;",
            "Lio/reactivex/e/c<",
            "-TT1;-TT2;+TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 4250
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 4251
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4252
    invoke-static {p2}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/c;)Lio/reactivex/e/h;

    move-result-object p2

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Lio/reactivex/ae;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {p2, v2, v0, v1}, Lio/reactivex/z;->zipArray(Lio/reactivex/e/h;ZI[Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/c;Z)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT1;>;",
            "Lio/reactivex/ae<",
            "+TT2;>;",
            "Lio/reactivex/e/c<",
            "-TT1;-TT2;+TR;>;Z)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 4306
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 4307
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4308
    invoke-static {p2}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/c;)Lio/reactivex/e/h;

    move-result-object p2

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Lio/reactivex/ae;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {p2, p3, v0, v1}, Lio/reactivex/z;->zipArray(Lio/reactivex/e/h;ZI[Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/c;ZI)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT1;>;",
            "Lio/reactivex/ae<",
            "+TT2;>;",
            "Lio/reactivex/e/c<",
            "-TT1;-TT2;+TR;>;ZI)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 4363
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 4364
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4365
    invoke-static {p2}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/c;)Lio/reactivex/e/h;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/ae;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {p2, p3, p4, v0}, Lio/reactivex/z;->zipArray(Lio/reactivex/e/h;ZI[Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/ae;Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    .line 4194
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    .line 4195
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4196
    new-instance v0, Lio/reactivex/internal/operators/c/ec;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/c/ec;-><init>(Lio/reactivex/ae;I)V

    .line 4197
    invoke-static {p1}, Lio/reactivex/internal/operators/c/bo;->zipIterable(Lio/reactivex/e/h;)Lio/reactivex/e/h;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/c/ec;->flatMap(Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p0

    .line 4196
    invoke-static {p0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Ljava/lang/Iterable;Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    .line 4140
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    .line 4141
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4142
    new-instance v0, Lio/reactivex/internal/operators/c/en;

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v5

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/c/en;-><init>([Lio/reactivex/ae;Ljava/lang/Iterable;Lio/reactivex/e/h;IZ)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static varargs zipArray(Lio/reactivex/e/h;ZI[Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;ZI[",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    .line 4931
    array-length v0, p3

    if-nez v0, :cond_0

    .line 4932
    invoke-static {}, Lio/reactivex/z;->empty()Lio/reactivex/z;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "zipper is null"

    .line 4934
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 4935
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 4936
    new-instance v0, Lio/reactivex/internal/operators/c/en;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p3

    move-object v4, p0

    move v5, p2

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/c/en;-><init>([Lio/reactivex/ae;Ljava/lang/Iterable;Lio/reactivex/e/h;IZ)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static zipIterable(Ljava/lang/Iterable;Lio/reactivex/e/h;ZI)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;ZI)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    .line 4994
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    .line 4995
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 4996
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 4997
    new-instance v0, Lio/reactivex/internal/operators/c/en;

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/c/en;-><init>([Lio/reactivex/ae;Ljava/lang/Iterable;Lio/reactivex/e/h;IZ)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final all(Lio/reactivex/e/q;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/q<",
            "-TT;>;)",
            "Lio/reactivex/ai<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 5023
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5024
    new-instance v0, Lio/reactivex/internal/operators/c/g;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/g;-><init>(Lio/reactivex/ae;Lio/reactivex/e/q;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final ambWith(Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 5048
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/ae;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 5049
    invoke-static {v0}, Lio/reactivex/z;->ambArray([Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final any(Lio/reactivex/e/q;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/q<",
            "-TT;>;)",
            "Lio/reactivex/ai<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 5075
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5076
    new-instance v0, Lio/reactivex/internal/operators/c/j;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/j;-><init>(Lio/reactivex/ae;Lio/reactivex/e/q;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final as(Lio/reactivex/aa;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/aa<",
            "TT;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "converter is null"

    .line 5097
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/aa;

    invoke-interface {p1, p0}, Lio/reactivex/aa;->apply(Lio/reactivex/z;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final blockingFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 5118
    new-instance v0, Lio/reactivex/internal/c/f;

    invoke-direct {v0}, Lio/reactivex/internal/c/f;-><init>()V

    .line 5119
    invoke-virtual {p0, v0}, Lio/reactivex/z;->subscribe(Lio/reactivex/ag;)V

    .line 5120
    invoke-virtual {v0}, Lio/reactivex/internal/c/f;->blockingGet()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 5124
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final blockingFirst(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 5146
    new-instance v0, Lio/reactivex/internal/c/f;

    invoke-direct {v0}, Lio/reactivex/internal/c/f;-><init>()V

    .line 5147
    invoke-virtual {p0, v0}, Lio/reactivex/z;->subscribe(Lio/reactivex/ag;)V

    .line 5148
    invoke-virtual {v0}, Lio/reactivex/internal/c/f;->blockingGet()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p1
.end method

.method public final blockingForEach(Lio/reactivex/e/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-TT;>;)V"
        }
    .end annotation

    .line 5183
    invoke-virtual {p0}, Lio/reactivex/z;->blockingIterable()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5184
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5186
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5188
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 5189
    check-cast v0, Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 5190
    invoke-static {p1}, Lio/reactivex/internal/util/h;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_0
    return-void
.end method

.method public final blockingIterable()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 5210
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/reactivex/z;->blockingIterable(I)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public final blockingIterable(I)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    .line 5229
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 5230
    new-instance v0, Lio/reactivex/internal/operators/c/b;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/b;-><init>(Lio/reactivex/ae;I)V

    return-object v0
.end method

.method public final blockingLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 5255
    new-instance v0, Lio/reactivex/internal/c/g;

    invoke-direct {v0}, Lio/reactivex/internal/c/g;-><init>()V

    .line 5256
    invoke-virtual {p0, v0}, Lio/reactivex/z;->subscribe(Lio/reactivex/ag;)V

    .line 5257
    invoke-virtual {v0}, Lio/reactivex/internal/c/g;->blockingGet()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 5261
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final blockingLast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 5287
    new-instance v0, Lio/reactivex/internal/c/g;

    invoke-direct {v0}, Lio/reactivex/internal/c/g;-><init>()V

    .line 5288
    invoke-virtual {p0, v0}, Lio/reactivex/z;->subscribe(Lio/reactivex/ag;)V

    .line 5289
    invoke-virtual {v0}, Lio/reactivex/internal/c/g;->blockingGet()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p1
.end method

.method public final blockingLatest()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 5315
    new-instance v0, Lio/reactivex/internal/operators/c/c;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/c/c;-><init>(Lio/reactivex/ae;)V

    return-object v0
.end method

.method public final blockingMostRecent(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 5338
    new-instance v0, Lio/reactivex/internal/operators/c/d;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/d;-><init>(Lio/reactivex/ae;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final blockingNext()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 5358
    new-instance v0, Lio/reactivex/internal/operators/c/e;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/c/e;-><init>(Lio/reactivex/ae;)V

    return-object v0
.end method

.method public final blockingSingle()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 5381
    invoke-virtual {p0}, Lio/reactivex/z;->singleElement()Lio/reactivex/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/q;->blockingGet()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 5383
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final blockingSingle(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 5412
    invoke-virtual {p0, p1}, Lio/reactivex/z;->single(Ljava/lang/Object;)Lio/reactivex/ai;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/ai;->blockingGet()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final blockingSubscribe()V
    .locals 0

    .line 5459
    invoke-static {p0}, Lio/reactivex/internal/operators/c/l;->subscribe(Lio/reactivex/ae;)V

    return-void
.end method

.method public final blockingSubscribe(Lio/reactivex/ag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 5552
    invoke-static {p0, p1}, Lio/reactivex/internal/operators/c/l;->subscribe(Lio/reactivex/ae;Lio/reactivex/ag;)V

    return-void
.end method

.method public final blockingSubscribe(Lio/reactivex/e/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-TT;>;)V"
        }
    .end annotation

    .line 5487
    sget-object v0, Lio/reactivex/internal/a/a;->ON_ERROR_MISSING:Lio/reactivex/e/g;

    sget-object v1, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/operators/c/l;->subscribe(Lio/reactivex/ae;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;)V

    return-void
.end method

.method public final blockingSubscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-TT;>;",
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 5509
    sget-object v0, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    invoke-static {p0, p1, p2, v0}, Lio/reactivex/internal/operators/c/l;->subscribe(Lio/reactivex/ae;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;)V

    return-void
.end method

.method public final blockingSubscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-TT;>;",
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/e/a;",
            ")V"
        }
    .end annotation

    .line 5531
    invoke-static {p0, p1, p2, p3}, Lio/reactivex/internal/operators/c/l;->subscribe(Lio/reactivex/ae;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;)V

    return-void
.end method

.method public final buffer(I)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 5577
    invoke-virtual {p0, p1, p1}, Lio/reactivex/z;->buffer(II)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(II)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/z<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 5606
    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/z;->buffer(IILjava/util/concurrent/Callable;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(IILjava/util/concurrent/Callable;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(II",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "Lio/reactivex/z<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "count"

    .line 5639
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    const-string v0, "skip"

    .line 5640
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    const-string v0, "bufferSupplier is null"

    .line 5641
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5642
    new-instance v0, Lio/reactivex/internal/operators/c/m;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/c/m;-><init>(Lio/reactivex/ae;IILjava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(ILjava/util/concurrent/Callable;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(I",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "Lio/reactivex/z<",
            "TU;>;"
        }
    .end annotation

    .line 5671
    invoke-virtual {p0, p1, p1, p2}, Lio/reactivex/z;->buffer(IILjava/util/concurrent/Callable;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 5701
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v6

    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/z;->buffer(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Ljava/util/concurrent/Callable;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 5734
    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/z;->buffer(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Ljava/util/concurrent/Callable;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Ljava/util/concurrent/Callable;)Lio/reactivex/z;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "Lio/reactivex/z<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    move-object/from16 v7, p5

    .line 5771
    invoke-static {v7, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    move-object/from16 v8, p6

    .line 5772
    invoke-static {v8, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    move-object/from16 v9, p7

    .line 5773
    invoke-static {v9, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5774
    new-instance v0, Lio/reactivex/internal/operators/c/q;

    const v10, 0x7fffffff

    const/4 v11, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v11}, Lio/reactivex/internal/operators/c/q;-><init>(Lio/reactivex/ae;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Ljava/util/concurrent/Callable;IZ)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 5803
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v4

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/z;->buffer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;I)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)",
            "Lio/reactivex/z<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 5836
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/z;->buffer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 5951
    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v6

    const v5, 0x7fffffff

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/z;->buffer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;ILjava/util/concurrent/Callable;Z)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;I)Lio/reactivex/z;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "I)",
            "Lio/reactivex/z<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 5871
    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/z;->buffer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;ILjava/util/concurrent/Callable;Z)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;ILjava/util/concurrent/Callable;Z)Lio/reactivex/z;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "I",
            "Ljava/util/concurrent/Callable<",
            "TU;>;Z)",
            "Lio/reactivex/z<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    move-object v7, p3

    .line 5916
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    move-object/from16 v8, p4

    .line 5917
    invoke-static {v8, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    move-object/from16 v9, p6

    .line 5918
    invoke-static {v9, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "count"

    move/from16 v10, p5

    .line 5919
    invoke-static {v10, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 5920
    new-instance v0, Lio/reactivex/internal/operators/c/q;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p1

    move/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lio/reactivex/internal/operators/c/q;-><init>(Lio/reactivex/ae;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Ljava/util/concurrent/Callable;IZ)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "TB;>;)",
            "Lio/reactivex/z<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 6053
    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/z;->buffer(Lio/reactivex/ae;Ljava/util/concurrent/Callable;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(Lio/reactivex/ae;I)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "TB;>;I)",
            "Lio/reactivex/z<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "initialCapacity"

    .line 6085
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 6086
    invoke-static {p2}, Lio/reactivex/internal/a/a;->createArrayList(I)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/reactivex/z;->buffer(Lio/reactivex/ae;Ljava/util/concurrent/Callable;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(Lio/reactivex/ae;Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOpening:",
            "Ljava/lang/Object;",
            "TClosing:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TTOpening;>;",
            "Lio/reactivex/e/h<",
            "-TTOpening;+",
            "Lio/reactivex/ae<",
            "+TTClosing;>;>;)",
            "Lio/reactivex/z<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 5983
    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/z;->buffer(Lio/reactivex/ae;Lio/reactivex/e/h;Ljava/util/concurrent/Callable;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(Lio/reactivex/ae;Lio/reactivex/e/h;Ljava/util/concurrent/Callable;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOpening:",
            "Ljava/lang/Object;",
            "TClosing:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "Lio/reactivex/ae<",
            "+TTOpening;>;",
            "Lio/reactivex/e/h<",
            "-TTOpening;+",
            "Lio/reactivex/ae<",
            "+TTClosing;>;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "Lio/reactivex/z<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "openingIndicator is null"

    .line 6020
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "closingIndicator is null"

    .line 6021
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    .line 6022
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6023
    new-instance v0, Lio/reactivex/internal/operators/c/n;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/c/n;-><init>(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/h;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(Lio/reactivex/ae;Ljava/util/concurrent/Callable;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "Lio/reactivex/ae<",
            "TB;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "Lio/reactivex/z<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "boundary is null"

    .line 6120
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    .line 6121
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6122
    new-instance v0, Lio/reactivex/internal/operators/c/p;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/c/p;-><init>(Lio/reactivex/ae;Lio/reactivex/ae;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(Ljava/util/concurrent/Callable;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/ae<",
            "TB;>;>;)",
            "Lio/reactivex/z<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 6151
    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/z;->buffer(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/ae<",
            "TB;>;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "Lio/reactivex/z<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "boundarySupplier is null"

    .line 6184
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    .line 6185
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6186
    new-instance v0, Lio/reactivex/internal/operators/c/o;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/c/o;-><init>(Lio/reactivex/ae;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final cache()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const/16 v0, 0x10

    .line 6240
    invoke-virtual {p0, v0}, Lio/reactivex/z;->cacheWithInitialCapacity(I)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final cacheWithInitialCapacity(I)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initialCapacity"

    .line 6298
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 6299
    new-instance v0, Lio/reactivex/internal/operators/c/r;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/r;-><init>(Lio/reactivex/z;I)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final cast(Ljava/lang/Class;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)",
            "Lio/reactivex/z<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "clazz is null"

    .line 6323
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6324
    invoke-static {p1}, Lio/reactivex/internal/a/a;->castFunction(Ljava/lang/Class;)Lio/reactivex/e/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/z;->map(Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final collect(Ljava/util/concurrent/Callable;Lio/reactivex/e/b;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TU;>;",
            "Lio/reactivex/e/b<",
            "-TU;-TT;>;)",
            "Lio/reactivex/ai<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "initialValueSupplier is null"

    .line 6356
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collector is null"

    .line 6357
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6358
    new-instance v0, Lio/reactivex/internal/operators/c/t;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/c/t;-><init>(Lio/reactivex/ae;Ljava/util/concurrent/Callable;Lio/reactivex/e/b;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final collectInto(Ljava/lang/Object;Lio/reactivex/e/b;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Lio/reactivex/e/b<",
            "-TU;-TT;>;)",
            "Lio/reactivex/ai<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "initialValue is null"

    .line 6390
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6391
    invoke-static {p1}, Lio/reactivex/internal/a/a;->justCallable(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/reactivex/z;->collect(Ljava/util/concurrent/Callable;Lio/reactivex/e/b;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final compose(Lio/reactivex/af;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/af<",
            "-TT;+TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "composer is null"

    .line 6417
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/af;

    invoke-interface {p1, p0}, Lio/reactivex/af;->apply(Lio/reactivex/z;)Lio/reactivex/ae;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/z;->wrap(Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final concatMap(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 6442
    invoke-virtual {p0, p1, v0}, Lio/reactivex/z;->concatMap(Lio/reactivex/e/h;I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final concatMap(Lio/reactivex/e/h;I)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;I)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 6469
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 6470
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 6471
    instance-of v0, p0, Lio/reactivex/internal/b/h;

    if-eqz v0, :cond_1

    .line 6473
    move-object p2, p0

    check-cast p2, Lio/reactivex/internal/b/h;

    invoke-interface {p2}, Lio/reactivex/internal/b/h;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 6475
    invoke-static {}, Lio/reactivex/z;->empty()Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 6477
    :cond_0
    invoke-static {p2, p1}, Lio/reactivex/internal/operators/c/cz;->scalarXMap(Ljava/lang/Object;Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 6479
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/c/v;

    sget-object v1, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/internal/operators/c/v;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;ILio/reactivex/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapCompletable(Lio/reactivex/e/h;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 6681
    invoke-virtual {p0, p1, v0}, Lio/reactivex/z;->concatMapCompletable(Lio/reactivex/e/h;I)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapCompletable(Lio/reactivex/e/h;I)Lio/reactivex/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;I)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 6706
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "capacityHint"

    .line 6707
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 6708
    new-instance v0, Lio/reactivex/internal/operators/b/l;

    sget-object v1, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    invoke-direct {v0, p0, p1, v1, p2}, Lio/reactivex/internal/operators/b/l;-><init>(Lio/reactivex/z;Lio/reactivex/e/h;Lio/reactivex/internal/util/ErrorMode;I)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapCompletableDelayError(Lio/reactivex/e/h;)Lio/reactivex/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 6732
    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/z;->concatMapCompletableDelayError(Lio/reactivex/e/h;ZI)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapCompletableDelayError(Lio/reactivex/e/h;Z)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;Z)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 6762
    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/z;->concatMapCompletableDelayError(Lio/reactivex/e/h;ZI)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapCompletableDelayError(Lio/reactivex/e/h;ZI)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;ZI)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 6796
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 6797
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 6798
    new-instance v0, Lio/reactivex/internal/operators/b/l;

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/b/l;-><init>(Lio/reactivex/z;Lio/reactivex/e/h;Lio/reactivex/internal/util/ErrorMode;I)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapDelayError(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    .line 6501
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/z;->concatMapDelayError(Lio/reactivex/e/h;IZ)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapDelayError(Lio/reactivex/e/h;IZ)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;IZ)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 6529
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 6530
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 6531
    instance-of v0, p0, Lio/reactivex/internal/b/h;

    if-eqz v0, :cond_1

    .line 6533
    move-object p2, p0

    check-cast p2, Lio/reactivex/internal/b/h;

    invoke-interface {p2}, Lio/reactivex/internal/b/h;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 6535
    invoke-static {}, Lio/reactivex/z;->empty()Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 6537
    :cond_0
    invoke-static {p2, p1}, Lio/reactivex/internal/operators/c/cz;->scalarXMap(Ljava/lang/Object;Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 6539
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/c/v;

    if-eqz p3, :cond_2

    sget-object p3, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    goto :goto_0

    :cond_2
    sget-object p3, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/c/v;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;ILio/reactivex/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapEager(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    .line 6564
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    const v1, 0x7fffffff

    invoke-virtual {p0, p1, v1, v0}, Lio/reactivex/z;->concatMapEager(Lio/reactivex/e/h;II)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapEager(Lio/reactivex/e/h;II)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;II)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 6592
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 6593
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    const-string v0, "prefetch"

    .line 6594
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 6595
    new-instance v0, Lio/reactivex/internal/operators/c/w;

    sget-object v4, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/c/w;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;Lio/reactivex/internal/util/ErrorMode;II)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapEagerDelayError(Lio/reactivex/e/h;IIZ)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;IIZ)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 6657
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 6658
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    const-string v0, "prefetch"

    .line 6659
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 6660
    new-instance v0, Lio/reactivex/internal/operators/c/w;

    if-eqz p4, :cond_0

    sget-object p4, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    goto :goto_0

    :cond_0
    sget-object p4, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    :goto_0
    move-object v4, p4

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/c/w;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;Lio/reactivex/internal/util/ErrorMode;II)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapEagerDelayError(Lio/reactivex/e/h;Z)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;Z)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    .line 6624
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    const v1, 0x7fffffff

    invoke-virtual {p0, p1, v1, v0, p2}, Lio/reactivex/z;->concatMapEagerDelayError(Lio/reactivex/e/h;IIZ)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapIterable(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "Lio/reactivex/z<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 6824
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6825
    new-instance v0, Lio/reactivex/internal/operators/c/bb;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/bb;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapIterable(Lio/reactivex/e/h;I)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;I)",
            "Lio/reactivex/z<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 6853
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 6854
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 6855
    invoke-static {p1}, Lio/reactivex/internal/operators/c/bo;->flatMapIntoIterable(Lio/reactivex/e/h;)Lio/reactivex/e/h;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/reactivex/z;->concatMap(Lio/reactivex/e/h;I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapMaybe(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 6881
    invoke-virtual {p0, p1, v0}, Lio/reactivex/z;->concatMapMaybe(Lio/reactivex/e/h;I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapMaybe(Lio/reactivex/e/h;I)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;I)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 6911
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 6912
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 6913
    new-instance v0, Lio/reactivex/internal/operators/b/m;

    sget-object v1, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    invoke-direct {v0, p0, p1, v1, p2}, Lio/reactivex/internal/operators/b/m;-><init>(Lio/reactivex/z;Lio/reactivex/e/h;Lio/reactivex/internal/util/ErrorMode;I)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapMaybeDelayError(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 6939
    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/z;->concatMapMaybeDelayError(Lio/reactivex/e/h;ZI)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapMaybeDelayError(Lio/reactivex/e/h;Z)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;Z)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 6971
    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/z;->concatMapMaybeDelayError(Lio/reactivex/e/h;ZI)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapMaybeDelayError(Lio/reactivex/e/h;ZI)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;ZI)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 7006
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 7007
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 7008
    new-instance v0, Lio/reactivex/internal/operators/b/m;

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/b/m;-><init>(Lio/reactivex/z;Lio/reactivex/e/h;Lio/reactivex/internal/util/ErrorMode;I)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapSingle(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ao<",
            "+TR;>;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 7034
    invoke-virtual {p0, p1, v0}, Lio/reactivex/z;->concatMapSingle(Lio/reactivex/e/h;I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapSingle(Lio/reactivex/e/h;I)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ao<",
            "+TR;>;>;I)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 7064
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 7065
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 7066
    new-instance v0, Lio/reactivex/internal/operators/b/n;

    sget-object v1, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    invoke-direct {v0, p0, p1, v1, p2}, Lio/reactivex/internal/operators/b/n;-><init>(Lio/reactivex/z;Lio/reactivex/e/h;Lio/reactivex/internal/util/ErrorMode;I)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapSingleDelayError(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ao<",
            "+TR;>;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 7092
    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/z;->concatMapSingleDelayError(Lio/reactivex/e/h;ZI)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapSingleDelayError(Lio/reactivex/e/h;Z)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ao<",
            "+TR;>;>;Z)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 7124
    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/z;->concatMapSingleDelayError(Lio/reactivex/e/h;ZI)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapSingleDelayError(Lio/reactivex/e/h;ZI)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ao<",
            "+TR;>;>;ZI)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 7159
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 7160
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 7161
    new-instance v0, Lio/reactivex/internal/operators/b/n;

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/b/n;-><init>(Lio/reactivex/z;Lio/reactivex/e/h;Lio/reactivex/internal/util/ErrorMode;I)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final concatWith(Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 7183
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7184
    invoke-static {p0, p1}, Lio/reactivex/z;->concat(Lio/reactivex/ae;Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final concatWith(Lio/reactivex/ao;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ao<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 7204
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7205
    new-instance v0, Lio/reactivex/internal/operators/c/z;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/z;-><init>(Lio/reactivex/z;Lio/reactivex/ao;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final concatWith(Lio/reactivex/g;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 7246
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7247
    new-instance v0, Lio/reactivex/internal/operators/c/x;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/x;-><init>(Lio/reactivex/z;Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final concatWith(Lio/reactivex/w;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 7225
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7226
    new-instance v0, Lio/reactivex/internal/operators/c/y;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/y;-><init>(Lio/reactivex/z;Lio/reactivex/w;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final contains(Ljava/lang/Object;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/reactivex/ai<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "element is null"

    .line 7269
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7270
    invoke-static {p1}, Lio/reactivex/internal/a/a;->equalsWith(Ljava/lang/Object;)Lio/reactivex/e/q;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/z;->any(Lio/reactivex/e/q;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final count()Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ai<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 7291
    new-instance v0, Lio/reactivex/internal/operators/c/ab;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/c/ab;-><init>(Lio/reactivex/ae;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object v0

    return-object v0
.end method

.method public final debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 7362
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/z;->debounce(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final debounce(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 7402
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 7403
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7404
    new-instance v0, Lio/reactivex/internal/operators/c/ae;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/c/ae;-><init>(Lio/reactivex/ae;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final debounce(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "TU;>;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "debounceSelector is null"

    .line 7323
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7324
    new-instance v0, Lio/reactivex/internal/operators/c/ad;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/ad;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final defaultIfEmpty(Ljava/lang/Object;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "defaultItem is null"

    .line 7426
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7427
    invoke-static {p1}, Lio/reactivex/z;->just(Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/z;->switchIfEmpty(Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 7480
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/z;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 7531
    invoke-virtual/range {v0 .. v5}, Lio/reactivex/z;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)Lio/reactivex/z;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "Z)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 7559
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 7560
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7562
    new-instance v0, Lio/reactivex/internal/operators/c/ag;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/c/ag;-><init>(Lio/reactivex/ae;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Z)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 7506
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/z;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final delay(Lio/reactivex/ae;Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "TU;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "TV;>;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 7597
    invoke-virtual {p0, p1}, Lio/reactivex/z;->delaySubscription(Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/reactivex/z;->delay(Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final delay(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "TU;>;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "itemDelay is null"

    .line 7456
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7457
    invoke-static {p1}, Lio/reactivex/internal/operators/c/bo;->itemDelay(Lio/reactivex/e/h;)Lio/reactivex/e/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/z;->flatMap(Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final delaySubscription(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 7643
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/z;->delaySubscription(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final delaySubscription(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 7669
    invoke-static {p1, p2, p3, p4}, Lio/reactivex/z;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/z;->delaySubscription(Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final delaySubscription(Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "TU;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 7620
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7621
    new-instance v0, Lio/reactivex/internal/operators/c/ah;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/ah;-><init>(Lio/reactivex/ae;Lio/reactivex/ae;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final dematerialize()Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/z<",
            "TT2;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7716
    new-instance v0, Lio/reactivex/internal/operators/c/ai;

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/c/ai;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final dematerialize(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;",
            "Lio/reactivex/y<",
            "TR;>;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    .line 7769
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7770
    new-instance v0, Lio/reactivex/internal/operators/c/ai;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/ai;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final distinct()Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 7807
    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v0

    invoke-static {}, Lio/reactivex/internal/a/a;->createHashSet()Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/z;->distinct(Lio/reactivex/e/h;Ljava/util/concurrent/Callable;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final distinct(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;TK;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 7847
    invoke-static {}, Lio/reactivex/internal/a/a;->createHashSet()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/z;->distinct(Lio/reactivex/e/h;Ljava/util/concurrent/Callable;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final distinct(Lio/reactivex/e/h;Ljava/util/concurrent/Callable;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;TK;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/util/Collection<",
            "-TK;>;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    .line 7878
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collectionSupplier is null"

    .line 7879
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7880
    new-instance v0, Lio/reactivex/internal/operators/c/ak;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/c/ak;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final distinctUntilChanged()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 7917
    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/z;->distinctUntilChanged(Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final distinctUntilChanged(Lio/reactivex/e/d;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/d<",
            "-TT;-TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "comparer is null"

    .line 7993
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7994
    new-instance v0, Lio/reactivex/internal/operators/c/al;

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lio/reactivex/internal/operators/c/al;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;Lio/reactivex/e/d;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final distinctUntilChanged(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;TK;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    .line 7959
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7960
    new-instance v0, Lio/reactivex/internal/operators/c/al;

    invoke-static {}, Lio/reactivex/internal/a/b;->equalsPredicate()Lio/reactivex/e/d;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/c/al;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;Lio/reactivex/e/d;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final doAfterNext(Lio/reactivex/e/g;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onAfterNext is null"

    .line 8017
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8018
    new-instance v0, Lio/reactivex/internal/operators/c/am;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/am;-><init>(Lio/reactivex/ae;Lio/reactivex/e/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final doAfterTerminate(Lio/reactivex/e/a;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/a;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onFinally is null"

    .line 8041
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8042
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v0

    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    invoke-direct {p0, v0, v1, v2, p1}, Lio/reactivex/z;->doOnEach(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final doFinally(Lio/reactivex/e/a;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/a;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onFinally is null"

    .line 8068
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8069
    new-instance v0, Lio/reactivex/internal/operators/c/an;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/an;-><init>(Lio/reactivex/ae;Lio/reactivex/e/a;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final doOnComplete(Lio/reactivex/e/a;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/a;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 8116
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v0

    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    invoke-direct {p0, v0, v1, p1, v2}, Lio/reactivex/z;->doOnEach(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final doOnDispose(Lio/reactivex/e/a;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/a;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 8096
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/reactivex/z;->doOnLifecycle(Lio/reactivex/e/g;Lio/reactivex/e/a;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final doOnEach(Lio/reactivex/ag;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "observer is null"

    .line 8191
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8193
    invoke-static {p1}, Lio/reactivex/internal/operators/c/bo;->observerOnNext(Lio/reactivex/ag;)Lio/reactivex/e/g;

    move-result-object v0

    .line 8194
    invoke-static {p1}, Lio/reactivex/internal/operators/c/bo;->observerOnError(Lio/reactivex/ag;)Lio/reactivex/e/g;

    move-result-object v1

    .line 8195
    invoke-static {p1}, Lio/reactivex/internal/operators/c/bo;->observerOnComplete(Lio/reactivex/ag;)Lio/reactivex/e/a;

    move-result-object p1

    sget-object v2, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    .line 8192
    invoke-direct {p0, v0, v1, p1, v2}, Lio/reactivex/z;->doOnEach(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final doOnEach(Lio/reactivex/e/g;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-",
            "Lio/reactivex/y<",
            "TT;>;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onNotification is null"

    .line 8159
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8161
    invoke-static {p1}, Lio/reactivex/internal/a/a;->notificationOnNext(Lio/reactivex/e/g;)Lio/reactivex/e/g;

    move-result-object v0

    .line 8162
    invoke-static {p1}, Lio/reactivex/internal/a/a;->notificationOnError(Lio/reactivex/e/g;)Lio/reactivex/e/g;

    move-result-object v1

    .line 8163
    invoke-static {p1}, Lio/reactivex/internal/a/a;->notificationOnComplete(Lio/reactivex/e/g;)Lio/reactivex/e/a;

    move-result-object p1

    sget-object v2, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    .line 8160
    invoke-direct {p0, v0, v1, p1, v2}, Lio/reactivex/z;->doOnEach(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final doOnError(Lio/reactivex/e/g;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 8219
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    invoke-direct {p0, v0, p1, v1, v1}, Lio/reactivex/z;->doOnEach(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final doOnLifecycle(Lio/reactivex/e/g;Lio/reactivex/e/a;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-",
            "Lio/reactivex/b/c;",
            ">;",
            "Lio/reactivex/e/a;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    .line 8242
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onDispose is null"

    .line 8243
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8244
    new-instance v0, Lio/reactivex/internal/operators/c/ap;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/c/ap;-><init>(Lio/reactivex/z;Lio/reactivex/e/g;Lio/reactivex/e/a;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final doOnNext(Lio/reactivex/e/g;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 8264
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    invoke-direct {p0, p1, v0, v1, v1}, Lio/reactivex/z;->doOnEach(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final doOnSubscribe(Lio/reactivex/e/g;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-",
            "Lio/reactivex/b/c;",
            ">;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 8287
    sget-object v0, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    invoke-virtual {p0, p1, v0}, Lio/reactivex/z;->doOnLifecycle(Lio/reactivex/e/g;Lio/reactivex/e/a;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final doOnTerminate(Lio/reactivex/e/a;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/a;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onTerminate is null"

    .line 8312
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8313
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v0

    .line 8314
    invoke-static {p1}, Lio/reactivex/internal/a/a;->actionConsumer(Lio/reactivex/e/a;)Lio/reactivex/e/g;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    .line 8313
    invoke-direct {p0, v0, v1, p1, v2}, Lio/reactivex/z;->doOnEach(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final elementAt(JLjava/lang/Object;)Lio/reactivex/ai;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-string v0, "defaultItem is null"

    .line 8371
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8372
    new-instance v0, Lio/reactivex/internal/operators/c/as;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/c/as;-><init>(Lio/reactivex/ae;JLjava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1

    .line 8369
    :cond_0
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "index >= 0 required but it was "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public final elementAt(J)Lio/reactivex/q;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 8342
    new-instance v0, Lio/reactivex/internal/operators/c/ar;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/c/ar;-><init>(Lio/reactivex/ae;J)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1

    .line 8340
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "index >= 0 required but it was "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final elementAtOrError(J)Lio/reactivex/ai;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 8399
    new-instance v0, Lio/reactivex/internal/operators/c/as;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/internal/operators/c/as;-><init>(Lio/reactivex/ae;JLjava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1

    .line 8397
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "index >= 0 required but it was "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final filter(Lio/reactivex/e/q;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/q<",
            "-TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 8421
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8422
    new-instance v0, Lio/reactivex/internal/operators/c/av;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/av;-><init>(Lio/reactivex/ae;Lio/reactivex/e/q;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final first(Ljava/lang/Object;)Lio/reactivex/ai;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 8462
    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/z;->elementAt(JLjava/lang/Object;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final firstElement()Lio/reactivex/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 8441
    invoke-virtual {p0, v0, v1}, Lio/reactivex/z;->elementAt(J)Lio/reactivex/q;

    move-result-object v0

    return-object v0
.end method

.method public final firstOrError()Lio/reactivex/ai;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 8481
    invoke-virtual {p0, v0, v1}, Lio/reactivex/z;->elementAtOrError(J)Lio/reactivex/ai;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 8507
    invoke-virtual {p0, p1, v0}, Lio/reactivex/z;->flatMap(Lio/reactivex/e/h;Z)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lio/reactivex/e/h;I)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;I)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    .line 8723
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2, v0}, Lio/reactivex/z;->flatMap(Lio/reactivex/e/h;ZII)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lio/reactivex/e/h;Lio/reactivex/e/c;)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TU;>;>;",
            "Lio/reactivex/e/c<",
            "-TT;-TU;+TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    .line 8753
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v4

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/z;->flatMap(Lio/reactivex/e/h;Lio/reactivex/e/c;ZII)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lio/reactivex/e/h;Lio/reactivex/e/c;I)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TU;>;>;",
            "Lio/reactivex/e/c<",
            "-TT;-TU;+TR;>;I)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    .line 8898
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/z;->flatMap(Lio/reactivex/e/h;Lio/reactivex/e/c;ZII)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lio/reactivex/e/h;Lio/reactivex/e/c;Z)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TU;>;>;",
            "Lio/reactivex/e/c<",
            "-TT;-TU;+TR;>;Z)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    .line 8786
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v4

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/z;->flatMap(Lio/reactivex/e/h;Lio/reactivex/e/c;ZII)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lio/reactivex/e/h;Lio/reactivex/e/c;ZI)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TU;>;>;",
            "Lio/reactivex/e/c<",
            "-TT;-TU;+TR;>;ZI)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    .line 8823
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/z;->flatMap(Lio/reactivex/e/h;Lio/reactivex/e/c;ZII)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lio/reactivex/e/h;Lio/reactivex/e/c;ZII)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TU;>;>;",
            "Lio/reactivex/e/c<",
            "-TT;-TU;+TR;>;ZII)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 8862
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 8863
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8864
    invoke-static {p1, p2}, Lio/reactivex/internal/operators/c/bo;->flatMapWithCombiner(Lio/reactivex/e/h;Lio/reactivex/e/c;)Lio/reactivex/e/h;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4, p5}, Lio/reactivex/z;->flatMap(Lio/reactivex/e/h;ZII)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lio/reactivex/e/h;Lio/reactivex/e/h;Ljava/util/concurrent/Callable;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;",
            "Lio/reactivex/e/h<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/ae<",
            "+TR;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/ae<",
            "+TR;>;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "onNextMapper is null"

    .line 8649
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onErrorMapper is null"

    .line 8650
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onCompleteSupplier is null"

    .line 8651
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8652
    new-instance v0, Lio/reactivex/internal/operators/c/bx;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/c/bx;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;Lio/reactivex/e/h;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/z;->merge(Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lio/reactivex/e/h;Lio/reactivex/e/h;Ljava/util/concurrent/Callable;I)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;",
            "Lio/reactivex/e/h<",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/ae<",
            "+TR;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/ae<",
            "+TR;>;>;I)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "onNextMapper is null"

    .line 8690
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onErrorMapper is null"

    .line 8691
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onCompleteSupplier is null"

    .line 8692
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8693
    new-instance v0, Lio/reactivex/internal/operators/c/bx;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/c/bx;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;Lio/reactivex/e/h;Ljava/util/concurrent/Callable;)V

    invoke-static {v0, p4}, Lio/reactivex/z;->merge(Lio/reactivex/ae;I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lio/reactivex/e/h;Z)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;Z)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 8536
    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/z;->flatMap(Lio/reactivex/e/h;ZI)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lio/reactivex/e/h;ZI)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;ZI)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    .line 8569
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/z;->flatMap(Lio/reactivex/e/h;ZII)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lio/reactivex/e/h;ZII)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;ZII)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 8605
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 8606
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    const-string v0, "bufferSize"

    .line 8607
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 8608
    instance-of v0, p0, Lio/reactivex/internal/b/h;

    if-eqz v0, :cond_1

    .line 8610
    move-object p2, p0

    check-cast p2, Lio/reactivex/internal/b/h;

    invoke-interface {p2}, Lio/reactivex/internal/b/h;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 8612
    invoke-static {}, Lio/reactivex/z;->empty()Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 8614
    :cond_0
    invoke-static {p2, p1}, Lio/reactivex/internal/operators/c/cz;->scalarXMap(Ljava/lang/Object;Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 8616
    :cond_1
    new-instance v6, Lio/reactivex/internal/operators/c/aw;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/c/aw;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;ZII)V

    invoke-static {v6}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapCompletable(Lio/reactivex/e/h;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 8916
    invoke-virtual {p0, p1, v0}, Lio/reactivex/z;->flatMapCompletable(Lio/reactivex/e/h;Z)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapCompletable(Lio/reactivex/e/h;Z)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;Z)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 8936
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8937
    new-instance v0, Lio/reactivex/internal/operators/c/ay;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/c/ay;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;Z)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapIterable(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "Lio/reactivex/z<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 8962
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8963
    new-instance v0, Lio/reactivex/internal/operators/c/bb;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/bb;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapIterable(Lio/reactivex/e/h;Lio/reactivex/e/c;)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;",
            "Lio/reactivex/e/c<",
            "-TT;-TU;+TV;>;)",
            "Lio/reactivex/z<",
            "TV;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 8994
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    .line 8995
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8996
    invoke-static {p1}, Lio/reactivex/internal/operators/c/bo;->flatMapIntoIterable(Lio/reactivex/e/h;)Lio/reactivex/e/h;

    move-result-object v2

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v5

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v6

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lio/reactivex/z;->flatMap(Lio/reactivex/e/h;Lio/reactivex/e/c;ZII)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapMaybe(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 9015
    invoke-virtual {p0, p1, v0}, Lio/reactivex/z;->flatMapMaybe(Lio/reactivex/e/h;Z)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapMaybe(Lio/reactivex/e/h;Z)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;Z)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 9037
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9038
    new-instance v0, Lio/reactivex/internal/operators/c/az;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/c/az;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;Z)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapSingle(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ao<",
            "+TR;>;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 9057
    invoke-virtual {p0, p1, v0}, Lio/reactivex/z;->flatMapSingle(Lio/reactivex/e/h;Z)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapSingle(Lio/reactivex/e/h;Z)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ao<",
            "+TR;>;>;Z)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 9079
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9080
    new-instance v0, Lio/reactivex/internal/operators/c/ba;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/c/ba;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;Z)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final forEach(Lio/reactivex/e/g;)Lio/reactivex/b/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-TT;>;)",
            "Lio/reactivex/b/c;"
        }
    .end annotation

    .line 9105
    invoke-virtual {p0, p1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    return-object p1
.end method

.method public final forEachWhile(Lio/reactivex/e/q;)Lio/reactivex/b/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/q<",
            "-TT;>;)",
            "Lio/reactivex/b/c;"
        }
    .end annotation

    .line 9133
    sget-object v0, Lio/reactivex/internal/a/a;->ON_ERROR_MISSING:Lio/reactivex/e/g;

    sget-object v1, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/z;->forEachWhile(Lio/reactivex/e/q;Lio/reactivex/e/g;Lio/reactivex/e/a;)Lio/reactivex/b/c;

    move-result-object p1

    return-object p1
.end method

.method public final forEachWhile(Lio/reactivex/e/q;Lio/reactivex/e/g;)Lio/reactivex/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/q<",
            "-TT;>;",
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/b/c;"
        }
    .end annotation

    .line 9158
    sget-object v0, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/z;->forEachWhile(Lio/reactivex/e/q;Lio/reactivex/e/g;Lio/reactivex/e/a;)Lio/reactivex/b/c;

    move-result-object p1

    return-object p1
.end method

.method public final forEachWhile(Lio/reactivex/e/q;Lio/reactivex/e/g;Lio/reactivex/e/a;)Lio/reactivex/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/q<",
            "-TT;>;",
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/e/a;",
            ")",
            "Lio/reactivex/b/c;"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 9187
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 9188
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 9189
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9191
    new-instance v0, Lio/reactivex/internal/c/o;

    invoke-direct {v0, p1, p2, p3}, Lio/reactivex/internal/c/o;-><init>(Lio/reactivex/e/q;Lio/reactivex/e/g;Lio/reactivex/e/a;)V

    .line 9192
    invoke-virtual {p0, v0}, Lio/reactivex/z;->subscribe(Lio/reactivex/ag;)V

    return-object v0
.end method

.method public final groupBy(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+TK;>;)",
            "Lio/reactivex/z<",
            "Lio/reactivex/f/b<",
            "TK;TT;>;>;"
        }
    .end annotation

    .line 9227
    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v0

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v1}, Lio/reactivex/z;->groupBy(Lio/reactivex/e/h;Lio/reactivex/e/h;ZI)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final groupBy(Lio/reactivex/e/h;Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+TK;>;",
            "Lio/reactivex/e/h<",
            "-TT;+TV;>;)",
            "Lio/reactivex/z<",
            "Lio/reactivex/f/b<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 9302
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lio/reactivex/z;->groupBy(Lio/reactivex/e/h;Lio/reactivex/e/h;ZI)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final groupBy(Lio/reactivex/e/h;Lio/reactivex/e/h;Z)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+TK;>;",
            "Lio/reactivex/e/h<",
            "-TT;+TV;>;Z)",
            "Lio/reactivex/z<",
            "Lio/reactivex/f/b<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 9343
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/z;->groupBy(Lio/reactivex/e/h;Lio/reactivex/e/h;ZI)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final groupBy(Lio/reactivex/e/h;Lio/reactivex/e/h;ZI)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+TK;>;",
            "Lio/reactivex/e/h<",
            "-TT;+TV;>;ZI)",
            "Lio/reactivex/z<",
            "Lio/reactivex/f/b<",
            "TK;TV;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    .line 9387
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    .line 9388
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 9389
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 9391
    new-instance v0, Lio/reactivex/internal/operators/c/bj;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/c/bj;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;Lio/reactivex/e/h;IZ)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final groupBy(Lio/reactivex/e/h;Z)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+TK;>;Z)",
            "Lio/reactivex/z<",
            "Lio/reactivex/f/b<",
            "TK;TT;>;>;"
        }
    .end annotation

    .line 9264
    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v0

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, Lio/reactivex/z;->groupBy(Lio/reactivex/e/h;Lio/reactivex/e/h;ZI)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final groupJoin(Lio/reactivex/ae;Lio/reactivex/e/h;Lio/reactivex/e/h;Lio/reactivex/e/c;)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRight:",
            "Ljava/lang/Object;",
            "T",
            "LeftEnd:Ljava/lang/Object;",
            "TRightEnd:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TTRight;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "Lio/reactivex/e/h<",
            "-TTRight;+",
            "Lio/reactivex/ae<",
            "TTRightEnd;>;>;",
            "Lio/reactivex/e/c<",
            "-TT;-",
            "Lio/reactivex/z<",
            "TTRight;>;+TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 9433
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "leftEnd is null"

    .line 9434
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "rightEnd is null"

    .line 9435
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    .line 9436
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9437
    new-instance v0, Lio/reactivex/internal/operators/c/bk;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/c/bk;-><init>(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/h;Lio/reactivex/e/h;Lio/reactivex/e/c;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final hide()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 9459
    new-instance v0, Lio/reactivex/internal/operators/c/bl;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/c/bl;-><init>(Lio/reactivex/ae;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final ignoreElements()Lio/reactivex/a;
    .locals 1

    .line 9477
    new-instance v0, Lio/reactivex/internal/operators/c/bn;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/c/bn;-><init>(Lio/reactivex/ae;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ai<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 9498
    invoke-static {}, Lio/reactivex/internal/a/a;->alwaysFalse()Lio/reactivex/e/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/z;->all(Lio/reactivex/e/q;)Lio/reactivex/ai;

    move-result-object v0

    return-object v0
.end method

.method public final join(Lio/reactivex/ae;Lio/reactivex/e/h;Lio/reactivex/e/h;Lio/reactivex/e/c;)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRight:",
            "Ljava/lang/Object;",
            "T",
            "LeftEnd:Ljava/lang/Object;",
            "TRightEnd:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TTRight;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "Lio/reactivex/e/h<",
            "-TTRight;+",
            "Lio/reactivex/ae<",
            "TTRightEnd;>;>;",
            "Lio/reactivex/e/c<",
            "-TT;-TTRight;+TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 9540
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "leftEnd is null"

    .line 9541
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "rightEnd is null"

    .line 9542
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    .line 9543
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9544
    new-instance v0, Lio/reactivex/internal/operators/c/br;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/c/br;-><init>(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/h;Lio/reactivex/e/h;Lio/reactivex/e/c;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final last(Ljava/lang/Object;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "defaultItem is null"

    .line 9587
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9588
    new-instance v0, Lio/reactivex/internal/operators/c/bu;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/bu;-><init>(Lio/reactivex/ae;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final lastElement()Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .line 9565
    new-instance v0, Lio/reactivex/internal/operators/c/bt;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/c/bt;-><init>(Lio/reactivex/ae;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object v0

    return-object v0
.end method

.method public final lastOrError()Lio/reactivex/ai;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    .line 9608
    new-instance v0, Lio/reactivex/internal/operators/c/bu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/c/bu;-><init>(Lio/reactivex/ae;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object v0

    return-object v0
.end method

.method public final lift(Lio/reactivex/ad;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ad<",
            "+TR;-TT;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "lifter is null"

    .line 9756
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9757
    new-instance v0, Lio/reactivex/internal/operators/c/bv;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/bv;-><init>(Lio/reactivex/ae;Lio/reactivex/ad;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final map(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 9780
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9781
    new-instance v0, Lio/reactivex/internal/operators/c/bw;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/bw;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final materialize()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lio/reactivex/y<",
            "TT;>;>;"
        }
    .end annotation

    .line 9802
    new-instance v0, Lio/reactivex/internal/operators/c/by;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/c/by;-><init>(Lio/reactivex/ae;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final mergeWith(Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 9825
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9826
    invoke-static {p0, p1}, Lio/reactivex/z;->merge(Lio/reactivex/ae;Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final mergeWith(Lio/reactivex/ao;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ao<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 9848
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9849
    new-instance v0, Lio/reactivex/internal/operators/c/cb;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/cb;-><init>(Lio/reactivex/z;Lio/reactivex/ao;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final mergeWith(Lio/reactivex/g;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 9893
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9894
    new-instance v0, Lio/reactivex/internal/operators/c/bz;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/bz;-><init>(Lio/reactivex/z;Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final mergeWith(Lio/reactivex/w;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 9872
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9873
    new-instance v0, Lio/reactivex/internal/operators/c/ca;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/ca;-><init>(Lio/reactivex/z;Lio/reactivex/w;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final observeOn(Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 9925
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lio/reactivex/z;->observeOn(Lio/reactivex/ah;ZI)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final observeOn(Lio/reactivex/ah;Z)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ah;",
            "Z)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 9957
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/z;->observeOn(Lio/reactivex/ah;ZI)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final observeOn(Lio/reactivex/ah;ZI)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ah;",
            "ZI)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 9990
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 9991
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 9992
    new-instance v0, Lio/reactivex/internal/operators/c/cd;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/c/cd;-><init>(Lio/reactivex/ae;Lio/reactivex/ah;ZI)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final ofType(Ljava/lang/Class;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)",
            "Lio/reactivex/z<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "clazz is null"

    .line 10013
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10014
    invoke-static {p1}, Lio/reactivex/internal/a/a;->isInstanceOf(Ljava/lang/Class;)Lio/reactivex/e/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/z;->filter(Lio/reactivex/e/q;)Lio/reactivex/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/z;->cast(Ljava/lang/Class;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorResumeNext(Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    .line 10085
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10086
    invoke-static {p1}, Lio/reactivex/internal/a/a;->justFunction(Ljava/lang/Object;)Lio/reactivex/e/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/z;->onErrorResumeNext(Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorResumeNext(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/h<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/ae<",
            "+TT;>;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resumeFunction is null"

    .line 10049
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10050
    new-instance v0, Lio/reactivex/internal/operators/c/ce;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/c/ce;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;Z)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorReturn(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/h<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "valueSupplier is null"

    .line 10118
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10119
    new-instance v0, Lio/reactivex/internal/operators/c/cf;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/cf;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorReturnItem(Ljava/lang/Object;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    .line 10151
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10152
    invoke-static {p1}, Lio/reactivex/internal/a/a;->justFunction(Ljava/lang/Object;)Lio/reactivex/e/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/z;->onErrorReturn(Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final onExceptionResumeNext(Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    .line 10190
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10191
    new-instance v0, Lio/reactivex/internal/operators/c/ce;

    invoke-static {p1}, Lio/reactivex/internal/a/a;->justFunction(Ljava/lang/Object;)Lio/reactivex/e/h;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/c/ce;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;Z)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final onTerminateDetach()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 10210
    new-instance v0, Lio/reactivex/internal/operators/c/aj;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/c/aj;-><init>(Lio/reactivex/ae;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final publish()Lio/reactivex/f/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/f/a<",
            "TT;>;"
        }
    .end annotation

    .line 10231
    invoke-static {p0}, Lio/reactivex/internal/operators/c/cg;->create(Lio/reactivex/ae;)Lio/reactivex/f/a;

    move-result-object v0

    return-object v0
.end method

.method public final publish(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;+",
            "Lio/reactivex/ae<",
            "TR;>;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    .line 10256
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10257
    new-instance v0, Lio/reactivex/internal/operators/c/cj;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/cj;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final reduce(Ljava/lang/Object;Lio/reactivex/e/c;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lio/reactivex/e/c<",
            "TR;-TT;TR;>;)",
            "Lio/reactivex/ai<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "seed is null"

    .line 10348
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "reducer is null"

    .line 10349
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10350
    new-instance v0, Lio/reactivex/internal/operators/c/cn;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/c/cn;-><init>(Lio/reactivex/ae;Ljava/lang/Object;Lio/reactivex/e/c;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final reduce(Lio/reactivex/e/c;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/c<",
            "TT;TT;TT;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "reducer is null"

    .line 10291
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10292
    new-instance v0, Lio/reactivex/internal/operators/c/cm;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/cm;-><init>(Lio/reactivex/ae;Lio/reactivex/e/c;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final reduceWith(Ljava/util/concurrent/Callable;Lio/reactivex/e/c;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Lio/reactivex/e/c<",
            "TR;-TT;TR;>;)",
            "Lio/reactivex/ai<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "seedSupplier is null"

    .line 10388
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "reducer is null"

    .line 10389
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10390
    new-instance v0, Lio/reactivex/internal/operators/c/co;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/c/co;-><init>(Lio/reactivex/ae;Ljava/util/concurrent/Callable;Lio/reactivex/e/c;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final repeat()Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 10408
    invoke-virtual {p0, v0, v1}, Lio/reactivex/z;->repeat(J)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final repeat(J)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 10437
    invoke-static {}, Lio/reactivex/z;->empty()Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 10439
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/c/cq;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/c/cq;-><init>(Lio/reactivex/z;J)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 10434
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "times >= 0 required but it was "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final repeatUntil(Lio/reactivex/e/e;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/e;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "stop is null"

    .line 10464
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10465
    new-instance v0, Lio/reactivex/internal/operators/c/cr;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/cr;-><init>(Lio/reactivex/z;Lio/reactivex/e/e;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final repeatWhen(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/h<",
            "-",
            "Lio/reactivex/z<",
            "Ljava/lang/Object;",
            ">;+",
            "Lio/reactivex/ae<",
            "*>;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "handler is null"

    .line 10490
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10491
    new-instance v0, Lio/reactivex/internal/operators/c/cs;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/cs;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final replay()Lio/reactivex/f/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/f/a<",
            "TT;>;"
        }
    .end annotation

    .line 10513
    invoke-static {p0}, Lio/reactivex/internal/operators/c/ct;->createFrom(Lio/reactivex/ae;)Lio/reactivex/f/a;

    move-result-object v0

    return-object v0
.end method

.method public final replay(I)Lio/reactivex/f/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/f/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    .line 10819
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 10820
    invoke-static {p0, p1}, Lio/reactivex/internal/operators/c/ct;->create(Lio/reactivex/ae;I)Lio/reactivex/f/a;

    move-result-object p1

    return-object p1
.end method

.method public final replay(IJLjava/util/concurrent/TimeUnit;)Lio/reactivex/f/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/f/a<",
            "TT;>;"
        }
    .end annotation

    .line 10852
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/z;->replay(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/f/a;

    move-result-object p1

    return-object p1
.end method

.method public final replay(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/f/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/f/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    .line 10888
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    const-string v0, "unit is null"

    .line 10889
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 10890
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    move-wide v1, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p1

    .line 10891
    invoke-static/range {v0 .. v5}, Lio/reactivex/internal/operators/c/ct;->create(Lio/reactivex/ae;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;I)Lio/reactivex/f/a;

    move-result-object p1

    return-object p1
.end method

.method public final replay(ILio/reactivex/ah;)Lio/reactivex/f/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/f/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    .line 10920
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 10921
    invoke-virtual {p0, p1}, Lio/reactivex/z;->replay(I)Lio/reactivex/f/a;

    move-result-object p1

    invoke-static {p1, p2}, Lio/reactivex/internal/operators/c/ct;->observeOn(Lio/reactivex/f/a;Lio/reactivex/ah;)Lio/reactivex/f/a;

    move-result-object p1

    return-object p1
.end method

.method public final replay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/f/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/f/a<",
            "TT;>;"
        }
    .end annotation

    .line 10947
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/z;->replay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/f/a;

    move-result-object p1

    return-object p1
.end method

.method public final replay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/f/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/f/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 10975
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 10976
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10977
    invoke-static {p0, p1, p2, p3, p4}, Lio/reactivex/internal/operators/c/ct;->create(Lio/reactivex/ae;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/f/a;

    move-result-object p1

    return-object p1
.end method

.method public final replay(Lio/reactivex/ah;)Lio/reactivex/f/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/f/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 11002
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11003
    invoke-virtual {p0}, Lio/reactivex/z;->replay()Lio/reactivex/f/a;

    move-result-object v0

    invoke-static {v0, p1}, Lio/reactivex/internal/operators/c/ct;->observeOn(Lio/reactivex/f/a;Lio/reactivex/ah;)Lio/reactivex/f/a;

    move-result-object p1

    return-object p1
.end method

.method public final replay(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;+",
            "Lio/reactivex/ae<",
            "TR;>;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    .line 10538
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10539
    invoke-static {p0}, Lio/reactivex/internal/operators/c/bo;->replayCallable(Lio/reactivex/z;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0, p1}, Lio/reactivex/internal/operators/c/ct;->multicastSelector(Ljava/util/concurrent/Callable;Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final replay(Lio/reactivex/e/h;I)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;+",
            "Lio/reactivex/ae<",
            "TR;>;>;I)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    .line 10571
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 10572
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 10573
    invoke-static {p0, p2}, Lio/reactivex/internal/operators/c/bo;->replayCallable(Lio/reactivex/z;I)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {p2, p1}, Lio/reactivex/internal/operators/c/ct;->multicastSelector(Ljava/util/concurrent/Callable;Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final replay(Lio/reactivex/e/h;IJLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;+",
            "Lio/reactivex/ae<",
            "TR;>;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    .line 10610
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/z;->replay(Lio/reactivex/e/h;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final replay(Lio/reactivex/e/h;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;+",
            "Lio/reactivex/ae<",
            "TR;>;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    .line 10651
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 10652
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    const-string v0, "unit is null"

    .line 10653
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 10654
    invoke-static {p6, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    .line 10656
    invoke-static/range {v0 .. v5}, Lio/reactivex/internal/operators/c/bo;->replayCallable(Lio/reactivex/z;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Ljava/util/concurrent/Callable;

    move-result-object p2

    .line 10655
    invoke-static {p2, p1}, Lio/reactivex/internal/operators/c/ct;->multicastSelector(Ljava/util/concurrent/Callable;Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final replay(Lio/reactivex/e/h;ILio/reactivex/ah;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;+",
            "Lio/reactivex/ae<",
            "TR;>;>;I",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    .line 10690
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 10691
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 10692
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 10693
    invoke-static {p0, p2}, Lio/reactivex/internal/operators/c/bo;->replayCallable(Lio/reactivex/z;I)Ljava/util/concurrent/Callable;

    move-result-object p2

    .line 10694
    invoke-static {p1, p3}, Lio/reactivex/internal/operators/c/bo;->replayFunction(Lio/reactivex/e/h;Lio/reactivex/ah;)Lio/reactivex/e/h;

    move-result-object p1

    .line 10693
    invoke-static {p2, p1}, Lio/reactivex/internal/operators/c/ct;->multicastSelector(Ljava/util/concurrent/Callable;Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final replay(Lio/reactivex/e/h;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;+",
            "Lio/reactivex/ae<",
            "TR;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    .line 10725
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/z;->replay(Lio/reactivex/e/h;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final replay(Lio/reactivex/e/h;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;+",
            "Lio/reactivex/ae<",
            "TR;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    .line 10758
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    .line 10759
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 10760
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10761
    invoke-static {p0, p2, p3, p4, p5}, Lio/reactivex/internal/operators/c/bo;->replayCallable(Lio/reactivex/z;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {p2, p1}, Lio/reactivex/internal/operators/c/ct;->multicastSelector(Ljava/util/concurrent/Callable;Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final replay(Lio/reactivex/e/h;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;+",
            "Lio/reactivex/ae<",
            "TR;>;>;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    .line 10789
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 10790
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10791
    invoke-static {p0}, Lio/reactivex/internal/operators/c/bo;->replayCallable(Lio/reactivex/z;)Ljava/util/concurrent/Callable;

    move-result-object v0

    .line 10792
    invoke-static {p1, p2}, Lio/reactivex/internal/operators/c/bo;->replayFunction(Lio/reactivex/e/h;Lio/reactivex/ah;)Lio/reactivex/e/h;

    move-result-object p1

    .line 10791
    invoke-static {v0, p1}, Lio/reactivex/internal/operators/c/ct;->multicastSelector(Ljava/util/concurrent/Callable;Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final retry()Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 11030
    invoke-static {}, Lio/reactivex/internal/a/a;->alwaysTrue()Lio/reactivex/e/q;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {p0, v1, v2, v0}, Lio/reactivex/z;->retry(JLio/reactivex/e/q;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final retry(J)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 11085
    invoke-static {}, Lio/reactivex/internal/a/a;->alwaysTrue()Lio/reactivex/e/q;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/z;->retry(JLio/reactivex/e/q;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final retry(JLio/reactivex/e/q;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/reactivex/e/q<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-string v0, "predicate is null"

    .line 11106
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11108
    new-instance v0, Lio/reactivex/internal/operators/c/cv;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/c/cv;-><init>(Lio/reactivex/z;JLio/reactivex/e/q;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 11104
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "times >= 0 required but it was "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public final retry(Lio/reactivex/e/d;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/d<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 11053
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11055
    new-instance v0, Lio/reactivex/internal/operators/c/cu;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/cu;-><init>(Lio/reactivex/z;Lio/reactivex/e/d;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final retry(Lio/reactivex/e/q;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/q<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 11126
    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/z;->retry(JLio/reactivex/e/q;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final retryUntil(Lio/reactivex/e/e;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/e;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "stop is null"

    .line 11143
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11144
    invoke-static {p1}, Lio/reactivex/internal/a/a;->predicateReverseFor(Lio/reactivex/e/e;)Lio/reactivex/e/q;

    move-result-object p1

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/z;->retry(JLio/reactivex/e/q;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final retryWhen(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/h<",
            "-",
            "Lio/reactivex/z<",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lio/reactivex/ae<",
            "*>;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "handler is null"

    .line 11224
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11225
    new-instance v0, Lio/reactivex/internal/operators/c/cw;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/cw;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final safeSubscribe(Lio/reactivex/ag;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    .line 11242
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11243
    instance-of v0, p1, Lio/reactivex/observers/c;

    if-eqz v0, :cond_0

    .line 11244
    invoke-virtual {p0, p1}, Lio/reactivex/z;->subscribe(Lio/reactivex/ag;)V

    return-void

    .line 11246
    :cond_0
    new-instance v0, Lio/reactivex/observers/c;

    invoke-direct {v0, p1}, Lio/reactivex/observers/c;-><init>(Lio/reactivex/ag;)V

    invoke-virtual {p0, v0}, Lio/reactivex/z;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method

.method public final sample(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 11272
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/z;->sample(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final sample(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 11330
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 11331
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11332
    new-instance v0, Lio/reactivex/internal/operators/c/cx;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/c/cx;-><init>(Lio/reactivex/ae;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final sample(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)Lio/reactivex/z;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "Z)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 11366
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 11367
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11368
    new-instance v0, Lio/reactivex/internal/operators/c/cx;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/c/cx;-><init>(Lio/reactivex/ae;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final sample(JLjava/util/concurrent/TimeUnit;Z)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 11303
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/z;->sample(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final sample(Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "TU;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sampler is null"

    .line 11392
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11393
    new-instance v0, Lio/reactivex/internal/operators/c/cy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/c/cy;-><init>(Lio/reactivex/ae;Lio/reactivex/ae;Z)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final sample(Lio/reactivex/ae;Z)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "TU;>;Z)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sampler is null"

    .line 11424
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11425
    new-instance v0, Lio/reactivex/internal/operators/c/cy;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/c/cy;-><init>(Lio/reactivex/ae;Lio/reactivex/ae;Z)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final scan(Lio/reactivex/e/c;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/c<",
            "TT;TT;TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "accumulator is null"

    .line 11452
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11453
    new-instance v0, Lio/reactivex/internal/operators/c/da;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/da;-><init>(Lio/reactivex/ae;Lio/reactivex/e/c;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final scan(Ljava/lang/Object;Lio/reactivex/e/c;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lio/reactivex/e/c<",
            "TR;-TT;TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "initialValue is null"

    .line 11501
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11502
    invoke-static {p1}, Lio/reactivex/internal/a/a;->justCallable(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/reactivex/z;->scanWith(Ljava/util/concurrent/Callable;Lio/reactivex/e/c;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final scanWith(Ljava/util/concurrent/Callable;Lio/reactivex/e/c;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Lio/reactivex/e/c<",
            "TR;-TT;TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "seedSupplier is null"

    .line 11536
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "accumulator is null"

    .line 11537
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11538
    new-instance v0, Lio/reactivex/internal/operators/c/db;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/c/db;-><init>(Lio/reactivex/ae;Ljava/util/concurrent/Callable;Lio/reactivex/e/c;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final serialize()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 11564
    new-instance v0, Lio/reactivex/internal/operators/c/de;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/c/de;-><init>(Lio/reactivex/z;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final share()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 11587
    invoke-virtual {p0}, Lio/reactivex/z;->publish()Lio/reactivex/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/f/a;->refCount()Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final single(Ljava/lang/Object;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "defaultItem is null"

    .line 11628
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11629
    new-instance v0, Lio/reactivex/internal/operators/c/dg;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/dg;-><init>(Lio/reactivex/ae;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final singleElement()Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .line 11606
    new-instance v0, Lio/reactivex/internal/operators/c/df;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/c/df;-><init>(Lio/reactivex/ae;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object v0

    return-object v0
.end method

.method public final singleOrError()Lio/reactivex/ai;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    .line 11650
    new-instance v0, Lio/reactivex/internal/operators/c/dg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/c/dg;-><init>(Lio/reactivex/ae;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object v0

    return-object v0
.end method

.method public final skip(J)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 11673
    invoke-static {p0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 11675
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/c/dh;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/c/dh;-><init>(Lio/reactivex/ae;J)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final skip(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 11700
    invoke-static {p1, p2, p3}, Lio/reactivex/z;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/z;->skipUntil(Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final skip(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 11726
    invoke-static {p1, p2, p3, p4}, Lio/reactivex/z;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/z;->skipUntil(Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final skipLast(I)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    if-ltz p1, :cond_1

    if-nez p1, :cond_0

    .line 11758
    invoke-static {p0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 11760
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/c/di;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/di;-><init>(Lio/reactivex/ae;I)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 11755
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "count >= 0 required but it was "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final skipLast(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 11787
    invoke-static {}, Lio/reactivex/i/a;->trampoline()Lio/reactivex/ah;

    move-result-object v4

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/z;->skipLast(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;ZI)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final skipLast(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 11845
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/z;->skipLast(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;ZI)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final skipLast(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "Z)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 11876
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/z;->skipLast(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;ZI)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final skipLast(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;ZI)Lio/reactivex/z;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "ZI)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 11909
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 11910
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 11911
    invoke-static {p6, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    shl-int/lit8 v7, p6, 0x1

    .line 11914
    new-instance p6, Lio/reactivex/internal/operators/c/dj;

    move-object v1, p6

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lio/reactivex/internal/operators/c/dj;-><init>(Lio/reactivex/ae;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;IZ)V

    invoke-static {p6}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final skipLast(JLjava/util/concurrent/TimeUnit;Z)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 11817
    invoke-static {}, Lio/reactivex/i/a;->trampoline()Lio/reactivex/ah;

    move-result-object v4

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/z;->skipLast(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;ZI)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final skipUntil(Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "TU;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 11938
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11939
    new-instance v0, Lio/reactivex/internal/operators/c/dk;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/dk;-><init>(Lio/reactivex/ae;Lio/reactivex/ae;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final skipWhile(Lio/reactivex/e/q;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/q<",
            "-TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 11961
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11962
    new-instance v0, Lio/reactivex/internal/operators/c/dl;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/dl;-><init>(Lio/reactivex/ae;Lio/reactivex/e/q;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final sorted()Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 11988
    invoke-virtual {p0}, Lio/reactivex/z;->toList()Lio/reactivex/ai;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/ai;->toObservable()Lio/reactivex/z;

    move-result-object v0

    invoke-static {}, Lio/reactivex/internal/a/a;->naturalComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/internal/a/a;->listSorter(Ljava/util/Comparator;)Lio/reactivex/e/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/z;->map(Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object v0

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/z;->flatMapIterable(Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final sorted(Ljava/util/Comparator;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sortFunction is null"

    .line 12011
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12012
    invoke-virtual {p0}, Lio/reactivex/z;->toList()Lio/reactivex/ai;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/ai;->toObservable()Lio/reactivex/z;

    move-result-object v0

    invoke-static {p1}, Lio/reactivex/internal/a/a;->listSorter(Ljava/util/Comparator;)Lio/reactivex/e/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/z;->map(Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p1

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/z;->flatMapIterable(Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final startWith(Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 12058
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/ae;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    .line 12059
    invoke-static {v0}, Lio/reactivex/z;->concatArray([Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final startWith(Ljava/lang/Iterable;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/ae;

    .line 12035
    invoke-static {p1}, Lio/reactivex/z;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/z;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, Lio/reactivex/z;->concatArray([Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final startWith(Ljava/lang/Object;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    .line 12082
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/ae;

    .line 12083
    invoke-static {p1}, Lio/reactivex/z;->just(Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, Lio/reactivex/z;->concatArray([Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final varargs startWithArray([Ljava/lang/Object;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 12106
    invoke-static {p1}, Lio/reactivex/z;->fromArray([Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p1

    .line 12107
    invoke-static {}, Lio/reactivex/z;->empty()Lio/reactivex/z;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 12108
    invoke-static {p0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/ae;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    .line 12110
    invoke-static {v0}, Lio/reactivex/z;->concatArray([Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe()Lio/reactivex/b/c;
    .locals 4

    .line 12130
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/a/a;->ON_ERROR_MISSING:Lio/reactivex/e/g;

    sget-object v2, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-TT;>;)",
            "Lio/reactivex/b/c;"
        }
    .end annotation

    .line 12155
    sget-object v0, Lio/reactivex/internal/a/a;->ON_ERROR_MISSING:Lio/reactivex/e/g;

    sget-object v1, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-TT;>;",
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/b/c;"
        }
    .end annotation

    .line 12181
    sget-object v0, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;)Lio/reactivex/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-TT;>;",
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/e/a;",
            ")",
            "Lio/reactivex/b/c;"
        }
    .end annotation

    .line 12212
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/g;)Lio/reactivex/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-TT;>;",
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/e/a;",
            "Lio/reactivex/e/g<",
            "-",
            "Lio/reactivex/b/c;",
            ">;)",
            "Lio/reactivex/b/c;"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 12246
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 12247
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 12248
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onSubscribe is null"

    .line 12249
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12251
    new-instance v0, Lio/reactivex/internal/c/t;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/reactivex/internal/c/t;-><init>(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/g;)V

    .line 12253
    invoke-virtual {p0, v0}, Lio/reactivex/z;->subscribe(Lio/reactivex/ag;)V

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/ag;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    .line 12261
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12263
    :try_start_0
    invoke-static {p0, p1}, Lio/reactivex/g/a;->onSubscribe(Lio/reactivex/z;Lio/reactivex/ag;)Lio/reactivex/ag;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null Observer. Please change the handler provided to RxJavaPlugins.setOnObservableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 12265
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12267
    invoke-virtual {p0, p1}, Lio/reactivex/z;->subscribeActual(Lio/reactivex/ag;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 12271
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 12274
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    .line 12276
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t throw other exceptions due to RS"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 12277
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 12278
    throw v0

    :catch_0
    move-exception p1

    .line 12269
    throw p1
.end method

.method protected abstract subscribeActual(Lio/reactivex/ag;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final subscribeOn(Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 12343
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12344
    new-instance v0, Lio/reactivex/internal/operators/c/dm;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/dm;-><init>(Lio/reactivex/ae;Lio/reactivex/ah;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final subscribeWith(Lio/reactivex/ag;)Lio/reactivex/ag;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/reactivex/ag<",
            "-TT;>;>(TE;)TE;"
        }
    .end annotation

    .line 12319
    invoke-virtual {p0, p1}, Lio/reactivex/z;->subscribe(Lio/reactivex/ag;)V

    return-object p1
.end method

.method public final switchIfEmpty(Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 12366
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12367
    new-instance v0, Lio/reactivex/internal/operators/c/dn;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/dn;-><init>(Lio/reactivex/ae;Lio/reactivex/ae;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final switchMap(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    .line 12394
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/z;->switchMap(Lio/reactivex/e/h;I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final switchMap(Lio/reactivex/e/h;I)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;I)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 12423
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 12424
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 12425
    instance-of v0, p0, Lio/reactivex/internal/b/h;

    if-eqz v0, :cond_1

    .line 12427
    move-object p2, p0

    check-cast p2, Lio/reactivex/internal/b/h;

    invoke-interface {p2}, Lio/reactivex/internal/b/h;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 12429
    invoke-static {}, Lio/reactivex/z;->empty()Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 12431
    :cond_0
    invoke-static {p2, p1}, Lio/reactivex/internal/operators/c/cz;->scalarXMap(Ljava/lang/Object;Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 12433
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/c/do;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/internal/operators/c/do;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;IZ)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final switchMapCompletable(Lio/reactivex/e/h;)Lio/reactivex/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 12473
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12474
    new-instance v0, Lio/reactivex/internal/operators/b/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/b/o;-><init>(Lio/reactivex/z;Lio/reactivex/e/h;Z)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final switchMapCompletableDelayError(Lio/reactivex/e/h;)Lio/reactivex/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 12515
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12516
    new-instance v0, Lio/reactivex/internal/operators/b/o;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/b/o;-><init>(Lio/reactivex/z;Lio/reactivex/e/h;Z)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final switchMapDelayError(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    .line 12668
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/z;->switchMapDelayError(Lio/reactivex/e/h;I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final switchMapDelayError(Lio/reactivex/e/h;I)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;I)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 12699
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 12700
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 12701
    instance-of v0, p0, Lio/reactivex/internal/b/h;

    if-eqz v0, :cond_1

    .line 12703
    move-object p2, p0

    check-cast p2, Lio/reactivex/internal/b/h;

    invoke-interface {p2}, Lio/reactivex/internal/b/h;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 12705
    invoke-static {}, Lio/reactivex/z;->empty()Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 12707
    :cond_0
    invoke-static {p2, p1}, Lio/reactivex/internal/operators/c/cz;->scalarXMap(Ljava/lang/Object;Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 12709
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/c/do;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/internal/operators/c/do;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;IZ)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final switchMapMaybe(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 12551
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12552
    new-instance v0, Lio/reactivex/internal/operators/b/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/b/p;-><init>(Lio/reactivex/z;Lio/reactivex/e/h;Z)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final switchMapMaybeDelayError(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 12577
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12578
    new-instance v0, Lio/reactivex/internal/operators/b/p;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/b/p;-><init>(Lio/reactivex/z;Lio/reactivex/e/h;Z)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final switchMapSingle(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ao<",
            "+TR;>;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 12607
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12608
    new-instance v0, Lio/reactivex/internal/operators/b/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/b/q;-><init>(Lio/reactivex/z;Lio/reactivex/e/h;Z)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final switchMapSingleDelayError(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ao<",
            "+TR;>;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 12638
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12639
    new-instance v0, Lio/reactivex/internal/operators/b/q;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/b/q;-><init>(Lio/reactivex/z;Lio/reactivex/e/h;Z)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final take(J)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 12738
    new-instance v0, Lio/reactivex/internal/operators/c/dp;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/c/dp;-><init>(Lio/reactivex/ae;J)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 12736
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "count >= 0 required but it was "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final take(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 12764
    invoke-static {p1, p2, p3}, Lio/reactivex/z;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/z;->takeUntil(Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final take(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 12793
    invoke-static {p1, p2, p3, p4}, Lio/reactivex/z;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/z;->takeUntil(Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final takeLast(I)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    if-ltz p1, :cond_2

    if-nez p1, :cond_0

    .line 12821
    new-instance p1, Lio/reactivex/internal/operators/c/bm;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/c/bm;-><init>(Lio/reactivex/ae;)V

    invoke-static {p1}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 12824
    new-instance p1, Lio/reactivex/internal/operators/c/dr;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/c/dr;-><init>(Lio/reactivex/ae;)V

    invoke-static {p1}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 12826
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/c/dq;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/dq;-><init>(Lio/reactivex/ae;I)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 12818
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "count >= 0 required but it was "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final takeLast(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 12853
    invoke-static {}, Lio/reactivex/i/a;->trampoline()Lio/reactivex/ah;

    move-result-object v6

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v8

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v8}, Lio/reactivex/z;->takeLast(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;ZI)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final takeLast(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 12885
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v8

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v8}, Lio/reactivex/z;->takeLast(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;ZI)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final takeLast(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;ZI)Lio/reactivex/z;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "ZI)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    move-object/from16 v7, p5

    .line 12922
    invoke-static {v7, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    move-object/from16 v8, p6

    .line 12923
    invoke-static {v8, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    move/from16 v9, p8

    .line 12924
    invoke-static {v9, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 12928
    new-instance v0, Lio/reactivex/internal/operators/c/ds;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p8

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/c/ds;-><init>(Lio/reactivex/ae;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;IZ)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object v0

    return-object v0

    .line 12926
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "count >= 0 required but it was "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final takeLast(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 12952
    invoke-static {}, Lio/reactivex/i/a;->trampoline()Lio/reactivex/ah;

    move-result-object v4

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/z;->takeLast(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;ZI)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final takeLast(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 13007
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/z;->takeLast(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;ZI)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final takeLast(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "Z)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 13038
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/z;->takeLast(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;ZI)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final takeLast(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;ZI)Lio/reactivex/z;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "ZI)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-wide v1, 0x7fffffffffffffffL

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    .line 13071
    invoke-virtual/range {v0 .. v8}, Lio/reactivex/z;->takeLast(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;ZI)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final takeLast(JLjava/util/concurrent/TimeUnit;Z)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 12979
    invoke-static {}, Lio/reactivex/i/a;->trampoline()Lio/reactivex/ah;

    move-result-object v4

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/z;->takeLast(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;ZI)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final takeUntil(Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "TU;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 13095
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13096
    new-instance v0, Lio/reactivex/internal/operators/c/dt;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/dt;-><init>(Lio/reactivex/ae;Lio/reactivex/ae;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final takeUntil(Lio/reactivex/e/q;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/q<",
            "-TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "stopPredicate is null"

    .line 13124
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13125
    new-instance v0, Lio/reactivex/internal/operators/c/du;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/du;-><init>(Lio/reactivex/ae;Lio/reactivex/e/q;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final takeWhile(Lio/reactivex/e/q;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/q<",
            "-TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 13148
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13149
    new-instance v0, Lio/reactivex/internal/operators/c/dv;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/dv;-><init>(Lio/reactivex/ae;Lio/reactivex/e/q;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final test()Lio/reactivex/observers/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observers/e<",
            "TT;>;"
        }
    .end annotation

    .line 15463
    new-instance v0, Lio/reactivex/observers/e;

    invoke-direct {v0}, Lio/reactivex/observers/e;-><init>()V

    .line 15464
    invoke-virtual {p0, v0}, Lio/reactivex/z;->subscribe(Lio/reactivex/ag;)V

    return-object v0
.end method

.method public final test(Z)Lio/reactivex/observers/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/observers/e<",
            "TT;>;"
        }
    .end annotation

    .line 15483
    new-instance v0, Lio/reactivex/observers/e;

    invoke-direct {v0}, Lio/reactivex/observers/e;-><init>()V

    if-eqz p1, :cond_0

    .line 15485
    invoke-virtual {v0}, Lio/reactivex/observers/e;->dispose()V

    .line 15487
    :cond_0
    invoke-virtual {p0, v0}, Lio/reactivex/z;->subscribe(Lio/reactivex/ag;)V

    return-object v0
.end method

.method public final throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 13175
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/z;->throttleFirst(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final throttleFirst(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 13204
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 13205
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13206
    new-instance v0, Lio/reactivex/internal/operators/c/dw;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/c/dw;-><init>(Lio/reactivex/ae;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final throttleLast(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 13234
    invoke-virtual {p0, p1, p2, p3}, Lio/reactivex/z;->sample(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final throttleLast(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 13265
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/reactivex/z;->sample(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final throttleLatest(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 13296
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/z;->throttleLatest(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final throttleLatest(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 13359
    invoke-virtual/range {v0 .. v5}, Lio/reactivex/z;->throttleLatest(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final throttleLatest(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)Lio/reactivex/z;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "Z)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 13391
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 13392
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13393
    new-instance v0, Lio/reactivex/internal/operators/c/dx;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/c/dx;-><init>(Lio/reactivex/z;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final throttleLatest(JLjava/util/concurrent/TimeUnit;Z)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 13327
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/z;->throttleLatest(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final throttleWithTimeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 13424
    invoke-virtual {p0, p1, p2, p3}, Lio/reactivex/z;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final throttleWithTimeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 13458
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/reactivex/z;->debounce(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final timeInterval()Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lio/reactivex/i/b<",
            "TT;>;>;"
        }
    .end annotation

    .line 13478
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/z;->timeInterval(Ljava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final timeInterval(Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "Lio/reactivex/i/b<",
            "TT;>;>;"
        }
    .end annotation

    .line 13500
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, p1}, Lio/reactivex/z;->timeInterval(Ljava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final timeInterval(Ljava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "Lio/reactivex/i/b<",
            "TT;>;>;"
        }
    .end annotation

    .line 13521
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/z;->timeInterval(Ljava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final timeInterval(Ljava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "Lio/reactivex/i/b<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 13544
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 13545
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13546
    new-instance v0, Lio/reactivex/internal/operators/c/dy;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/c/dy;-><init>(Lio/reactivex/ae;Ljava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 13635
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lio/reactivex/z;->timeout0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ae;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 13662
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13663
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/z;->timeout0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ae;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p4

    .line 13722
    invoke-direct/range {v0 .. v5}, Lio/reactivex/z;->timeout0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ae;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 13693
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p5

    move-object v5, p4

    .line 13694
    invoke-direct/range {v0 .. v5}, Lio/reactivex/z;->timeout0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ae;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(Lio/reactivex/ae;Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "TU;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "TV;>;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "firstTimeoutIndicator is null"

    .line 13756
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 13757
    invoke-direct {p0, p1, p2, v0}, Lio/reactivex/z;->timeout0(Lio/reactivex/ae;Lio/reactivex/e/h;Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(Lio/reactivex/ae;Lio/reactivex/e/h;Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "TU;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "TV;>;>;",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "firstTimeoutIndicator is null"

    .line 13798
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "other is null"

    .line 13799
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13800
    invoke-direct {p0, p1, p2, p3}, Lio/reactivex/z;->timeout0(Lio/reactivex/ae;Lio/reactivex/e/h;Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "TV;>;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 13576
    invoke-direct {p0, v0, p1, v0}, Lio/reactivex/z;->timeout0(Lio/reactivex/ae;Lio/reactivex/e/h;Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(Lio/reactivex/e/h;Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "TV;>;>;",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 13609
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 13610
    invoke-direct {p0, v0, p1, p2}, Lio/reactivex/z;->timeout0(Lio/reactivex/ae;Lio/reactivex/e/h;Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final timestamp()Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lio/reactivex/i/b<",
            "TT;>;>;"
        }
    .end annotation

    .line 13835
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/z;->timestamp(Ljava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final timestamp(Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "Lio/reactivex/i/b<",
            "TT;>;>;"
        }
    .end annotation

    .line 13858
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, p1}, Lio/reactivex/z;->timestamp(Ljava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final timestamp(Ljava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "Lio/reactivex/i/b<",
            "TT;>;>;"
        }
    .end annotation

    .line 13879
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/z;->timestamp(Ljava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final timestamp(Ljava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "Lio/reactivex/i/b<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 13903
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 13904
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13905
    invoke-static {p1, p2}, Lio/reactivex/internal/a/a;->timestampWith(Ljava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/e/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/z;->map(Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final to(Lio/reactivex/e/h;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;TR;>;)TR;"
        }
    .end annotation

    :try_start_0
    const-string v0, "converter is null"

    .line 13924
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/e/h;

    invoke-interface {p1, p0}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 13926
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 13927
    invoke-static {p1}, Lio/reactivex/internal/util/h;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final toFlowable(Lio/reactivex/BackpressureStrategy;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/BackpressureStrategy;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 14314
    new-instance v0, Lio/reactivex/internal/operators/flowable/bk;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/bk;-><init>(Lio/reactivex/z;)V

    .line 14316
    sget-object v1, Lio/reactivex/z$1;->a:[I

    invoke-virtual {p1}, Lio/reactivex/BackpressureStrategy;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 14326
    invoke-virtual {v0}, Lio/reactivex/j;->onBackpressureBuffer()Lio/reactivex/j;

    move-result-object p1

    return-object p1

    .line 14324
    :cond_0
    new-instance p1, Lio/reactivex/internal/operators/flowable/cm;

    invoke-direct {p1, v0}, Lio/reactivex/internal/operators/flowable/cm;-><init>(Lio/reactivex/j;)V

    invoke-static {p1}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0

    .line 14320
    :cond_2
    invoke-virtual {v0}, Lio/reactivex/j;->onBackpressureLatest()Lio/reactivex/j;

    move-result-object p1

    return-object p1

    .line 14318
    :cond_3
    invoke-virtual {v0}, Lio/reactivex/j;->onBackpressureDrop()Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final toFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 5437
    new-instance v0, Lio/reactivex/internal/c/p;

    invoke-direct {v0}, Lio/reactivex/internal/c/p;-><init>()V

    invoke-virtual {p0, v0}, Lio/reactivex/z;->subscribeWith(Lio/reactivex/ag;)Lio/reactivex/ag;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final toList()Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ai<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const/16 v0, 0x10

    .line 13958
    invoke-virtual {p0, v0}, Lio/reactivex/z;->toList(I)Lio/reactivex/ai;

    move-result-object v0

    return-object v0
.end method

.method public final toList(I)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/ai<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "capacityHint"

    .line 13990
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 13991
    new-instance v0, Lio/reactivex/internal/operators/c/ed;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/ed;-><init>(Lio/reactivex/ae;I)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final toList(Ljava/util/concurrent/Callable;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "Lio/reactivex/ai<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "collectionSupplier is null"

    .line 14024
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14025
    new-instance v0, Lio/reactivex/internal/operators/c/ed;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/ed;-><init>(Lio/reactivex/ae;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final toMap(Lio/reactivex/e/h;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+TK;>;)",
            "Lio/reactivex/ai<",
            "Ljava/util/Map<",
            "TK;TT;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    .line 14055
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14056
    invoke-static {}, Lio/reactivex/internal/util/HashMapSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {p1}, Lio/reactivex/internal/a/a;->toMapKeySelector(Lio/reactivex/e/h;)Lio/reactivex/e/b;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/reactivex/z;->collect(Ljava/util/concurrent/Callable;Lio/reactivex/e/b;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final toMap(Lio/reactivex/e/h;Lio/reactivex/e/h;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+TK;>;",
            "Lio/reactivex/e/h<",
            "-TT;+TV;>;)",
            "Lio/reactivex/ai<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    .line 14091
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    .line 14092
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14093
    invoke-static {}, Lio/reactivex/internal/util/HashMapSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {p1, p2}, Lio/reactivex/internal/a/a;->toMapKeyValueSelector(Lio/reactivex/e/h;Lio/reactivex/e/h;)Lio/reactivex/e/b;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/reactivex/z;->collect(Ljava/util/concurrent/Callable;Lio/reactivex/e/b;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final toMap(Lio/reactivex/e/h;Lio/reactivex/e/h;Ljava/util/concurrent/Callable;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+TK;>;",
            "Lio/reactivex/e/h<",
            "-TT;+TV;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)",
            "Lio/reactivex/ai<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    .line 14128
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    .line 14129
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "mapSupplier is null"

    .line 14130
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14131
    invoke-static {p1, p2}, Lio/reactivex/internal/a/a;->toMapKeyValueSelector(Lio/reactivex/e/h;Lio/reactivex/e/h;)Lio/reactivex/e/b;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lio/reactivex/z;->collect(Ljava/util/concurrent/Callable;Lio/reactivex/e/b;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final toMultimap(Lio/reactivex/e/h;)Lio/reactivex/ai;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+TK;>;)",
            "Lio/reactivex/ai<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TT;>;>;>;"
        }
    .end annotation

    .line 14159
    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v0

    .line 14160
    invoke-static {}, Lio/reactivex/internal/util/HashMapSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v1

    .line 14161
    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asFunction()Lio/reactivex/e/h;

    move-result-object v2

    .line 14162
    invoke-virtual {p0, p1, v0, v1, v2}, Lio/reactivex/z;->toMultimap(Lio/reactivex/e/h;Lio/reactivex/e/h;Ljava/util/concurrent/Callable;Lio/reactivex/e/h;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final toMultimap(Lio/reactivex/e/h;Lio/reactivex/e/h;)Lio/reactivex/ai;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+TK;>;",
            "Lio/reactivex/e/h<",
            "-TT;+TV;>;)",
            "Lio/reactivex/ai<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 14193
    invoke-static {}, Lio/reactivex/internal/util/HashMapSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v0

    .line 14194
    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asFunction()Lio/reactivex/e/h;

    move-result-object v1

    .line 14195
    invoke-virtual {p0, p1, p2, v0, v1}, Lio/reactivex/z;->toMultimap(Lio/reactivex/e/h;Lio/reactivex/e/h;Ljava/util/concurrent/Callable;Lio/reactivex/e/h;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final toMultimap(Lio/reactivex/e/h;Lio/reactivex/e/h;Ljava/util/concurrent/Callable;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+TK;>;",
            "Lio/reactivex/e/h<",
            "-TT;+TV;>;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;)",
            "Lio/reactivex/ai<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 14271
    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asFunction()Lio/reactivex/e/h;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/z;->toMultimap(Lio/reactivex/e/h;Lio/reactivex/e/h;Ljava/util/concurrent/Callable;Lio/reactivex/e/h;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final toMultimap(Lio/reactivex/e/h;Lio/reactivex/e/h;Ljava/util/concurrent/Callable;Lio/reactivex/e/h;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+TK;>;",
            "Lio/reactivex/e/h<",
            "-TT;+TV;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;",
            "Lio/reactivex/e/h<",
            "-TK;+",
            "Ljava/util/Collection<",
            "-TV;>;>;)",
            "Lio/reactivex/ai<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    .line 14230
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    .line 14231
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "mapSupplier is null"

    .line 14232
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collectionFactory is null"

    .line 14233
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14234
    invoke-static {p1, p2, p4}, Lio/reactivex/internal/a/a;->toMultimapKeyValueSelector(Lio/reactivex/e/h;Lio/reactivex/e/h;Lio/reactivex/e/h;)Lio/reactivex/e/b;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lio/reactivex/z;->collect(Ljava/util/concurrent/Callable;Lio/reactivex/e/b;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final toSortedList()Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ai<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 14355
    invoke-static {}, Lio/reactivex/internal/a/a;->naturalOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/z;->toSortedList(Ljava/util/Comparator;)Lio/reactivex/ai;

    move-result-object v0

    return-object v0
.end method

.method public final toSortedList(I)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/ai<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 14446
    invoke-static {}, Lio/reactivex/internal/a/a;->naturalOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/reactivex/z;->toSortedList(Ljava/util/Comparator;I)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final toSortedList(Ljava/util/Comparator;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lio/reactivex/ai<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "comparator is null"

    .line 14382
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14383
    invoke-virtual {p0}, Lio/reactivex/z;->toList()Lio/reactivex/ai;

    move-result-object v0

    invoke-static {p1}, Lio/reactivex/internal/a/a;->listSorter(Ljava/util/Comparator;)Lio/reactivex/e/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/ai;->map(Lio/reactivex/e/h;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final toSortedList(Ljava/util/Comparator;I)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;I)",
            "Lio/reactivex/ai<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "comparator is null"

    .line 14413
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14414
    invoke-virtual {p0, p2}, Lio/reactivex/z;->toList(I)Lio/reactivex/ai;

    move-result-object p2

    invoke-static {p1}, Lio/reactivex/internal/a/a;->listSorter(Ljava/util/Comparator;)Lio/reactivex/e/h;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/reactivex/ai;->map(Lio/reactivex/e/h;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final unsubscribeOn(Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 14468
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14469
    new-instance v0, Lio/reactivex/internal/operators/c/ee;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/ee;-><init>(Lio/reactivex/ae;Lio/reactivex/ah;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final window(J)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/z<",
            "Lio/reactivex/z<",
            "TT;>;>;"
        }
    .end annotation

    .line 14494
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/z;->window(JJI)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final window(JJ)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lio/reactivex/z<",
            "Lio/reactivex/z<",
            "TT;>;>;"
        }
    .end annotation

    .line 14522
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/z;->window(JJI)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final window(JJI)Lio/reactivex/z;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI)",
            "Lio/reactivex/z<",
            "Lio/reactivex/z<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "count"

    .line 14552
    invoke-static {p1, p2, v0}, Lio/reactivex/internal/a/b;->verifyPositive(JLjava/lang/String;)J

    const-string v0, "skip"

    .line 14553
    invoke-static {p3, p4, v0}, Lio/reactivex/internal/a/b;->verifyPositive(JLjava/lang/String;)J

    const-string v0, "bufferSize"

    .line 14554
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 14555
    new-instance v0, Lio/reactivex/internal/operators/c/eg;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/c/eg;-><init>(Lio/reactivex/ae;JJI)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final window(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "Lio/reactivex/z<",
            "TT;>;>;"
        }
    .end annotation

    .line 14583
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v6

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/z;->window(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final window(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "Lio/reactivex/z<",
            "TT;>;>;"
        }
    .end annotation

    .line 14613
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/z;->window(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final window(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;I)Lio/reactivex/z;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "I)",
            "Lio/reactivex/z<",
            "Lio/reactivex/z<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "timespan"

    move-wide v3, p1

    .line 14645
    invoke-static {p1, p2, v0}, Lio/reactivex/internal/a/b;->verifyPositive(JLjava/lang/String;)J

    const-string v0, "timeskip"

    move-wide/from16 v5, p3

    .line 14646
    invoke-static {v5, v6, v0}, Lio/reactivex/internal/a/b;->verifyPositive(JLjava/lang/String;)J

    const-string v0, "bufferSize"

    move/from16 v11, p7

    .line 14647
    invoke-static {v11, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    const-string v0, "scheduler is null"

    move-object/from16 v8, p6

    .line 14648
    invoke-static {v8, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    move-object/from16 v7, p5

    .line 14649
    invoke-static {v7, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14650
    new-instance v0, Lio/reactivex/internal/operators/c/ek;

    const-wide v9, 0x7fffffffffffffffL

    const/4 v12, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v12}, Lio/reactivex/internal/operators/c/ek;-><init>(Lio/reactivex/ae;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;JIZ)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "Lio/reactivex/z<",
            "TT;>;>;"
        }
    .end annotation

    .line 14677
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v4

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/z;->window(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;JZ)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;J)Lio/reactivex/z;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "J)",
            "Lio/reactivex/z<",
            "Lio/reactivex/z<",
            "TT;>;>;"
        }
    .end annotation

    .line 14709
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v4

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/z;->window(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;JZ)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;JZ)Lio/reactivex/z;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "JZ)",
            "Lio/reactivex/z<",
            "Lio/reactivex/z<",
            "TT;>;>;"
        }
    .end annotation

    .line 14743
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-wide v5, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/z;->window(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;JZ)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/z<",
            "Lio/reactivex/z<",
            "TT;>;>;"
        }
    .end annotation

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 14773
    invoke-virtual/range {v0 .. v7}, Lio/reactivex/z;->window(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;JZ)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;J)Lio/reactivex/z;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "J)",
            "Lio/reactivex/z<",
            "Lio/reactivex/z<",
            "TT;>;>;"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    .line 14807
    invoke-virtual/range {v0 .. v7}, Lio/reactivex/z;->window(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;JZ)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;JZ)Lio/reactivex/z;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "JZ)",
            "Lio/reactivex/z<",
            "Lio/reactivex/z<",
            "TT;>;>;"
        }
    .end annotation

    .line 14843
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v8

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lio/reactivex/z;->window(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;JZI)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;JZI)Lio/reactivex/z;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "JZI)",
            "Lio/reactivex/z<",
            "Lio/reactivex/z<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    move/from16 v11, p8

    .line 14882
    invoke-static {v11, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    const-string v0, "scheduler is null"

    move-object/from16 v8, p4

    .line 14883
    invoke-static {v8, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    move-object/from16 v7, p3

    .line 14884
    invoke-static {v7, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "count"

    move-wide/from16 v9, p5

    .line 14885
    invoke-static {v9, v10, v0}, Lio/reactivex/internal/a/b;->verifyPositive(JLjava/lang/String;)J

    .line 14886
    new-instance v0, Lio/reactivex/internal/operators/c/ek;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p1

    move/from16 v12, p7

    invoke-direct/range {v1 .. v12}, Lio/reactivex/internal/operators/c/ek;-><init>(Lio/reactivex/ae;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;JIZ)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final window(Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "TB;>;)",
            "Lio/reactivex/z<",
            "Lio/reactivex/z<",
            "TT;>;>;"
        }
    .end annotation

    .line 14912
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/z;->window(Lio/reactivex/ae;I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final window(Lio/reactivex/ae;I)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "TB;>;I)",
            "Lio/reactivex/z<",
            "Lio/reactivex/z<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "boundary is null"

    .line 14940
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 14941
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 14942
    new-instance v0, Lio/reactivex/internal/operators/c/eh;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/c/eh;-><init>(Lio/reactivex/ae;Lio/reactivex/ae;I)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final window(Lio/reactivex/ae;Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "TU;>;",
            "Lio/reactivex/e/h<",
            "-TU;+",
            "Lio/reactivex/ae<",
            "TV;>;>;)",
            "Lio/reactivex/z<",
            "Lio/reactivex/z<",
            "TT;>;>;"
        }
    .end annotation

    .line 14973
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/z;->window(Lio/reactivex/ae;Lio/reactivex/e/h;I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final window(Lio/reactivex/ae;Lio/reactivex/e/h;I)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "TU;>;",
            "Lio/reactivex/e/h<",
            "-TU;+",
            "Lio/reactivex/ae<",
            "TV;>;>;I)",
            "Lio/reactivex/z<",
            "Lio/reactivex/z<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "openingIndicator is null"

    .line 15006
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "closingIndicator is null"

    .line 15007
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 15008
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 15009
    new-instance v0, Lio/reactivex/internal/operators/c/ei;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/c/ei;-><init>(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/h;I)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final window(Ljava/util/concurrent/Callable;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/ae<",
            "TB;>;>;)",
            "Lio/reactivex/z<",
            "Lio/reactivex/z<",
            "TT;>;>;"
        }
    .end annotation

    .line 15035
    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/z;->window(Ljava/util/concurrent/Callable;I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final window(Ljava/util/concurrent/Callable;I)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/ae<",
            "TB;>;>;I)",
            "Lio/reactivex/z<",
            "Lio/reactivex/z<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "boundary is null"

    .line 15063
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 15064
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 15065
    new-instance v0, Lio/reactivex/internal/operators/c/ej;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/c/ej;-><init>(Lio/reactivex/ae;Ljava/util/concurrent/Callable;I)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final withLatestFrom(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/k;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "TT1;>;",
            "Lio/reactivex/ae<",
            "TT2;>;",
            "Lio/reactivex/ae<",
            "TT3;>;",
            "Lio/reactivex/ae<",
            "TT4;>;",
            "Lio/reactivex/e/k<",
            "-TT;-TT1;-TT2;-TT3;-TT4;TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "o1 is null"

    .line 15211
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "o2 is null"

    .line 15212
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "o3 is null"

    .line 15213
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "o4 is null"

    .line 15214
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 15215
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15216
    invoke-static {p5}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/k;)Lio/reactivex/e/h;

    move-result-object p5

    const/4 v0, 0x4

    new-array v0, v0, [Lio/reactivex/ae;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    .line 15217
    invoke-virtual {p0, v0, p5}, Lio/reactivex/z;->withLatestFrom([Lio/reactivex/ae;Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final withLatestFrom(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/j;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "TT1;>;",
            "Lio/reactivex/ae<",
            "TT2;>;",
            "Lio/reactivex/ae<",
            "TT3;>;",
            "Lio/reactivex/e/j<",
            "-TT;-TT1;-TT2;-TT3;TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "o1 is null"

    .line 15169
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "o2 is null"

    .line 15170
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "o3 is null"

    .line 15171
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 15172
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15173
    invoke-static {p4}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/j;)Lio/reactivex/e/h;

    move-result-object p4

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/ae;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    .line 15174
    invoke-virtual {p0, v0, p4}, Lio/reactivex/z;->withLatestFrom([Lio/reactivex/ae;Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final withLatestFrom(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/i;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "TT1;>;",
            "Lio/reactivex/ae<",
            "TT2;>;",
            "Lio/reactivex/e/i<",
            "-TT;-TT1;-TT2;TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "o1 is null"

    .line 15130
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "o2 is null"

    .line 15131
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 15132
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15133
    invoke-static {p3}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/i;)Lio/reactivex/e/h;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/ae;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 15134
    invoke-virtual {p0, v0, p3}, Lio/reactivex/z;->withLatestFrom([Lio/reactivex/ae;Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final withLatestFrom(Lio/reactivex/ae;Lio/reactivex/e/c;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TU;>;",
            "Lio/reactivex/e/c<",
            "-TT;-TU;+TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 15095
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 15096
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15098
    new-instance v0, Lio/reactivex/internal/operators/c/el;

    invoke-direct {v0, p0, p2, p1}, Lio/reactivex/internal/operators/c/el;-><init>(Lio/reactivex/ae;Lio/reactivex/e/c;Lio/reactivex/ae;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final withLatestFrom(Ljava/lang/Iterable;Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ae<",
            "*>;>;",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "others is null"

    .line 15273
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 15274
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15275
    new-instance v0, Lio/reactivex/internal/operators/c/em;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/c/em;-><init>(Lio/reactivex/ae;Ljava/lang/Iterable;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final withLatestFrom([Lio/reactivex/ae;Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/ae<",
            "*>;",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "others is null"

    .line 15244
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 15245
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15246
    new-instance v0, Lio/reactivex/internal/operators/c/em;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/c/em;-><init>(Lio/reactivex/ae;[Lio/reactivex/ae;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final zipWith(Lio/reactivex/ae;Lio/reactivex/e/c;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TU;>;",
            "Lio/reactivex/e/c<",
            "-TT;-TU;+TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 15351
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15352
    invoke-static {p0, p1, p2}, Lio/reactivex/z;->zip(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/c;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final zipWith(Lio/reactivex/ae;Lio/reactivex/e/c;Z)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TU;>;",
            "Lio/reactivex/e/c<",
            "-TT;-TU;+TR;>;Z)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    .line 15397
    invoke-static {p0, p1, p2, p3}, Lio/reactivex/z;->zip(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/c;Z)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final zipWith(Lio/reactivex/ae;Lio/reactivex/e/c;ZI)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TU;>;",
            "Lio/reactivex/e/c<",
            "-TT;-TU;+TR;>;ZI)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    .line 15444
    invoke-static {p0, p1, p2, p3, p4}, Lio/reactivex/z;->zip(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/c;ZI)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final zipWith(Ljava/lang/Iterable;Lio/reactivex/e/c;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TU;>;",
            "Lio/reactivex/e/c<",
            "-TT;-TU;+TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 15307
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 15308
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15309
    new-instance v0, Lio/reactivex/internal/operators/c/eo;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/c/eo;-><init>(Lio/reactivex/z;Ljava/lang/Iterable;Lio/reactivex/e/c;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method
