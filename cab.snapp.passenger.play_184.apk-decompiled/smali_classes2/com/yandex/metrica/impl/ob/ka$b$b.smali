.class public final Lcom/yandex/metrica/impl/ob/ka$b$b;
.super Lcom/yandex/metrica/impl/ob/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ka$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field private static volatile m:[Lcom/yandex/metrica/impl/ob/ka$b$b;


# instance fields
.field public b:J

.field public c:J

.field public d:J

.field public e:D

.field public f:D

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2661
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/e;-><init>()V

    .line 2662
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ka$b$b;->e()Lcom/yandex/metrica/impl/ob/ka$b$b;

    return-void
.end method

.method public static d()[Lcom/yandex/metrica/impl/ob/ka$b$b;
    .locals 2

    .line 2617
    sget-object v0, Lcom/yandex/metrica/impl/ob/ka$b$b;->m:[Lcom/yandex/metrica/impl/ob/ka$b$b;

    if-nez v0, :cond_1

    .line 2618
    sget-object v0, Lcom/yandex/metrica/impl/ob/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2620
    :try_start_0
    sget-object v1, Lcom/yandex/metrica/impl/ob/ka$b$b;->m:[Lcom/yandex/metrica/impl/ob/ka$b$b;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/ka$b$b;

    .line 2621
    sput-object v1, Lcom/yandex/metrica/impl/ob/ka$b$b;->m:[Lcom/yandex/metrica/impl/ob/ka$b$b;

    .line 2623
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2625
    :cond_1
    :goto_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/ka$b$b;->m:[Lcom/yandex/metrica/impl/ob/ka$b$b;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2602
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ka$b$b;->b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/ka$b$b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/yandex/metrica/impl/ob/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2684
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->b:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(IJ)V

    .line 2685
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->c:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(IJ)V

    .line 2686
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v2, 0x3

    .line 2687
    invoke-virtual {p1, v2, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(IJ)V

    :cond_0
    const/4 v0, 0x4

    .line 2689
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->e:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ID)V

    const/4 v0, 0x5

    .line 2690
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->f:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ID)V

    .line 2691
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->g:I

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    .line 2692
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 2694
    :cond_1
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->h:I

    if-eqz v0, :cond_2

    const/4 v1, 0x7

    .line 2695
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 2697
    :cond_2
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->i:I

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    .line 2698
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 2700
    :cond_3
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->j:I

    if-eqz v0, :cond_4

    const/16 v1, 0x9

    .line 2701
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 2703
    :cond_4
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->k:I

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    .line 2704
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 2706
    :cond_5
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->l:I

    if-eqz v0, :cond_6

    const/16 v1, 0xb

    .line 2707
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 2709
    :cond_6
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method public final b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/ka$b$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2759
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 2764
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/g;->a(Lcom/yandex/metrica/impl/ob/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2817
    :sswitch_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->g()I

    move-result v0

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2821
    :cond_1
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->l:I

    goto :goto_0

    .line 2806
    :sswitch_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->g()I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 2811
    :cond_2
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->k:I

    goto :goto_0

    .line 2802
    :sswitch_2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->g()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->j:I

    goto :goto_0

    .line 2798
    :sswitch_3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->k()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->i:I

    goto :goto_0

    .line 2794
    :sswitch_4
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->k()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->h:I

    goto :goto_0

    .line 2790
    :sswitch_5
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->k()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->g:I

    goto :goto_0

    .line 2786
    :sswitch_6
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->c()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->f:D

    goto :goto_0

    .line 2782
    :sswitch_7
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->c()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->e:D

    goto :goto_0

    .line 2778
    :sswitch_8
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->d:J

    goto :goto_0

    .line 2774
    :sswitch_9
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->c:J

    goto :goto_0

    .line 2770
    :sswitch_a
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->b:J

    goto :goto_0

    :sswitch_b
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x8 -> :sswitch_a
        0x10 -> :sswitch_9
        0x18 -> :sswitch_8
        0x21 -> :sswitch_7
        0x29 -> :sswitch_6
        0x30 -> :sswitch_5
        0x38 -> :sswitch_4
        0x40 -> :sswitch_3
        0x48 -> :sswitch_2
        0x50 -> :sswitch_1
        0x58 -> :sswitch_0
    .end sparse-switch
.end method

.method protected final c()I
    .locals 6

    .line 2714
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/e;->c()I

    move-result v0

    .line 2715
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->b:J

    const/4 v3, 0x1

    .line 2716
    invoke-static {v3, v1, v2}, Lcom/yandex/metrica/impl/ob/b;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2717
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->c:J

    const/4 v3, 0x2

    .line 2718
    invoke-static {v3, v1, v2}, Lcom/yandex/metrica/impl/ob/b;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2719
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->d:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v3, 0x3

    .line 2721
    invoke-static {v3, v1, v2}, Lcom/yandex/metrica/impl/ob/b;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    const/4 v1, 0x4

    .line 2724
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x5

    .line 2726
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2727
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->g:I

    if-eqz v1, :cond_1

    const/4 v2, 0x6

    .line 2729
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2731
    :cond_1
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->h:I

    if-eqz v1, :cond_2

    const/4 v2, 0x7

    .line 2733
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2735
    :cond_2
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->i:I

    if-eqz v1, :cond_3

    const/16 v2, 0x8

    .line 2737
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2739
    :cond_3
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->j:I

    if-eqz v1, :cond_4

    const/16 v2, 0x9

    .line 2741
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2743
    :cond_4
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->k:I

    if-eqz v1, :cond_5

    const/16 v2, 0xa

    .line 2745
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2747
    :cond_5
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->l:I

    if-eqz v1, :cond_6

    const/16 v2, 0xb

    .line 2749
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    return v0
.end method

.method public final e()Lcom/yandex/metrica/impl/ob/ka$b$b;
    .locals 2

    const-wide/16 v0, 0x0

    .line 2666
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->b:J

    .line 2667
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->c:J

    .line 2668
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->d:J

    const-wide/16 v0, 0x0

    .line 2669
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->e:D

    .line 2670
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->f:D

    const/4 v0, 0x0

    .line 2671
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->g:I

    .line 2672
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->h:I

    .line 2673
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->i:I

    .line 2674
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->j:I

    .line 2675
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->k:I

    .line 2676
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->l:I

    const/4 v0, -0x1

    .line 2677
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$b;->a:I

    return-object p0
.end method
