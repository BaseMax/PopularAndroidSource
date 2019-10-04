.class public final Lcom/yandex/metrica/impl/ob/kh$a$d;
.super Lcom/yandex/metrica/impl/ob/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/kh$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/kh$a$d$a;
    }
.end annotation


# static fields
.field private static volatile h:[Lcom/yandex/metrica/impl/ob/kh$a$d;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:[Lcom/yandex/metrica/impl/ob/kh$a$d$a;

.field public f:J

.field public g:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 778
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/e;-><init>()V

    .line 779
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kh$a$d;->e()Lcom/yandex/metrica/impl/ob/kh$a$d;

    return-void
.end method

.method public static d()[Lcom/yandex/metrica/impl/ob/kh$a$d;
    .locals 2

    .line 749
    sget-object v0, Lcom/yandex/metrica/impl/ob/kh$a$d;->h:[Lcom/yandex/metrica/impl/ob/kh$a$d;

    if-nez v0, :cond_1

    .line 750
    sget-object v0, Lcom/yandex/metrica/impl/ob/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 752
    :try_start_0
    sget-object v1, Lcom/yandex/metrica/impl/ob/kh$a$d;->h:[Lcom/yandex/metrica/impl/ob/kh$a$d;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/kh$a$d;

    .line 753
    sput-object v1, Lcom/yandex/metrica/impl/ob/kh$a$d;->h:[Lcom/yandex/metrica/impl/ob/kh$a$d;

    .line 755
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 757
    :cond_1
    :goto_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/kh$a$d;->h:[Lcom/yandex/metrica/impl/ob/kh$a$d;

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

    .line 648
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/kh$a$d;->b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/kh$a$d;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/yandex/metrica/impl/ob/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 796
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 797
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 799
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->e:[Lcom/yandex/metrica/impl/ob/kh$a$d$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 800
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->e:[Lcom/yandex/metrica/impl/ob/kh$a$d$a;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 801
    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x4

    .line 803
    invoke-virtual {p1, v3, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/e;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    .line 807
    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->f:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/yandex/metrica/impl/ob/b;->b(IJ)V

    .line 808
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->g:[I

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    .line 809
    :goto_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->g:[I

    array-length v2, v0

    if-ge v1, v2, :cond_2

    const/4 v2, 0x6

    .line 810
    aget v0, v0, v1

    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 813
    :cond_2
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method public final b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/kh$a$d;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 854
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    move-result v0

    if-eqz v0, :cond_18

    const/16 v1, 0xa

    if-eq v0, v1, :cond_17

    const/16 v1, 0x12

    if-eq v0, v1, :cond_16

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_15

    const/16 v1, 0x22

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_11

    const/16 v1, 0x28

    if-eq v0, v1, :cond_10

    const/16 v1, 0x30

    const/4 v4, 0x2

    if-eq v0, v1, :cond_9

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    .line 859
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/g;->a(Lcom/yandex/metrica/impl/ob/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 933
    :cond_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->m()I

    move-result v0

    .line 934
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/a;->c(I)I

    move-result v0

    .line 937
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->s()I

    move-result v1

    const/4 v5, 0x0

    .line 938
    :goto_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->q()I

    move-result v6

    if-lez v6, :cond_3

    .line 939
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->g()I

    move-result v6

    if-eq v6, v2, :cond_2

    if-eq v6, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_8

    .line 947
    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/a;->e(I)V

    .line 948
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->g:[I

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    array-length v1, v1

    :goto_2
    add-int/2addr v5, v1

    .line 949
    new-array v5, v5, [I

    if-eqz v1, :cond_5

    .line 951
    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->g:[I

    invoke-static {v6, v3, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 953
    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->q()I

    move-result v3

    if-lez v3, :cond_7

    .line 954
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->g()I

    move-result v3

    if-eq v3, v2, :cond_6

    if-eq v3, v4, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v6, v1, 0x1

    .line 958
    aput v3, v5, v1

    move v1, v6

    goto :goto_3

    .line 962
    :cond_7
    iput-object v5, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->g:[I

    .line 964
    :cond_8
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/a;->d(I)V

    goto :goto_0

    .line 902
    :cond_9
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/ob/g;->b(Lcom/yandex/metrica/impl/ob/a;I)I

    move-result v0

    .line 903
    new-array v1, v0, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_4
    if-ge v5, v0, :cond_c

    if-eqz v5, :cond_a

    .line 907
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    .line 909
    :cond_a
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->g()I

    move-result v7

    if-eq v7, v2, :cond_b

    if-eq v7, v4, :cond_b

    goto :goto_5

    :cond_b
    add-int/lit8 v8, v6, 0x1

    .line 913
    aput v7, v1, v6

    move v6, v8

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_c
    if-eqz v6, :cond_0

    .line 918
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->g:[I

    if-nez v2, :cond_d

    const/4 v2, 0x0

    goto :goto_6

    :cond_d
    array-length v2, v2

    :goto_6
    if-nez v2, :cond_e

    if-ne v6, v0, :cond_e

    .line 920
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->g:[I

    goto/16 :goto_0

    :cond_e
    add-int v0, v2, v6

    .line 922
    new-array v0, v0, [I

    if-eqz v2, :cond_f

    .line 924
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->g:[I

    invoke-static {v4, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 926
    :cond_f
    invoke-static {v1, v3, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 927
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->g:[I

    goto/16 :goto_0

    .line 897
    :cond_10
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->f:J

    goto/16 :goto_0

    .line 878
    :cond_11
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/ob/g;->b(Lcom/yandex/metrica/impl/ob/a;I)I

    move-result v0

    .line 879
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->e:[Lcom/yandex/metrica/impl/ob/kh$a$d$a;

    if-nez v1, :cond_12

    const/4 v1, 0x0

    goto :goto_7

    :cond_12
    array-length v1, v1

    :goto_7
    add-int/2addr v0, v1

    .line 880
    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/kh$a$d$a;

    if-eqz v1, :cond_13

    .line 883
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->e:[Lcom/yandex/metrica/impl/ob/kh$a$d$a;

    invoke-static {v4, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 885
    :cond_13
    :goto_8
    array-length v3, v0

    sub-int/2addr v3, v2

    if-ge v1, v3, :cond_14

    .line 886
    new-instance v3, Lcom/yandex/metrica/impl/ob/kh$a$d$a;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/kh$a$d$a;-><init>()V

    aput-object v3, v0, v1

    .line 887
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    .line 888
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 891
    :cond_14
    new-instance v2, Lcom/yandex/metrica/impl/ob/kh$a$d$a;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/kh$a$d$a;-><init>()V

    aput-object v2, v0, v1

    .line 892
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    .line 893
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->e:[Lcom/yandex/metrica/impl/ob/kh$a$d$a;

    goto/16 :goto_0

    .line 873
    :cond_15
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 869
    :cond_16
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 865
    :cond_17
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_18
    return-object p0
.end method

.method protected final c()I
    .locals 6

    .line 818
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/e;->c()I

    move-result v0

    .line 819
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->b:Ljava/lang/String;

    const/4 v2, 0x1

    .line 820
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 821
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->c:Ljava/lang/String;

    const/4 v3, 0x2

    .line 822
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 823
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->d:Ljava/lang/String;

    const/4 v3, 0x3

    .line 824
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 825
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->e:[Lcom/yandex/metrica/impl/ob/kh$a$d$a;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v0

    const/4 v0, 0x0

    .line 826
    :goto_0
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->e:[Lcom/yandex/metrica/impl/ob/kh$a$d$a;

    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 827
    aget-object v4, v4, v0

    if-eqz v4, :cond_0

    const/4 v5, 0x4

    .line 830
    invoke-static {v5, v4}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/e;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    const/4 v1, 0x5

    .line 834
    iget-wide v4, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->f:J

    .line 835
    invoke-static {v1, v4, v5}, Lcom/yandex/metrica/impl/ob/b;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 836
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->g:[I

    if-eqz v1, :cond_4

    array-length v1, v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    .line 838
    :goto_1
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->g:[I

    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 839
    aget v4, v4, v3

    .line 841
    invoke-static {v4}, Lcom/yandex/metrica/impl/ob/b;->g(I)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v0, v1

    .line 844
    array-length v1, v4

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public final e()Lcom/yandex/metrica/impl/ob/kh$a$d;
    .locals 2

    const-string v0, ""

    .line 783
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->b:Ljava/lang/String;

    .line 784
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->c:Ljava/lang/String;

    .line 785
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->d:Ljava/lang/String;

    .line 786
    invoke-static {}, Lcom/yandex/metrica/impl/ob/kh$a$d$a;->d()[Lcom/yandex/metrica/impl/ob/kh$a$d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->e:[Lcom/yandex/metrica/impl/ob/kh$a$d$a;

    const-wide/16 v0, 0x0

    .line 787
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->f:J

    .line 788
    sget-object v0, Lcom/yandex/metrica/impl/ob/g;->a:[I

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->g:[I

    const/4 v0, -0x1

    .line 789
    iput v0, p0, Lcom/yandex/metrica/impl/ob/kh$a$d;->a:I

    return-object p0
.end method
