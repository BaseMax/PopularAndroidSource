.class public final Lcom/yandex/metrica/impl/ob/ka$b$a;
.super Lcom/yandex/metrica/impl/ob/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ka$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static volatile f:[Lcom/yandex/metrica/impl/ob/ka$b$a;


# instance fields
.field public b:J

.field public c:J

.field public d:[Lcom/yandex/metrica/impl/ob/ka$a;

.field public e:[Lcom/yandex/metrica/impl/ob/ka$d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2871
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/e;-><init>()V

    .line 2872
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ka$b$a;->e()Lcom/yandex/metrica/impl/ob/ka$b$a;

    return-void
.end method

.method public static d()[Lcom/yandex/metrica/impl/ob/ka$b$a;
    .locals 2

    .line 2848
    sget-object v0, Lcom/yandex/metrica/impl/ob/ka$b$a;->f:[Lcom/yandex/metrica/impl/ob/ka$b$a;

    if-nez v0, :cond_1

    .line 2849
    sget-object v0, Lcom/yandex/metrica/impl/ob/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2851
    :try_start_0
    sget-object v1, Lcom/yandex/metrica/impl/ob/ka$b$a;->f:[Lcom/yandex/metrica/impl/ob/ka$b$a;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/ka$b$a;

    .line 2852
    sput-object v1, Lcom/yandex/metrica/impl/ob/ka$b$a;->f:[Lcom/yandex/metrica/impl/ob/ka$b$a;

    .line 2854
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2856
    :cond_1
    :goto_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/ka$b$a;->f:[Lcom/yandex/metrica/impl/ob/ka$b$a;

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

    .line 2842
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ka$b$a;->b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/ka$b$a;

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

    .line 2887
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$a;->b:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(IJ)V

    .line 2888
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$a;->c:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(IJ)V

    .line 2889
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$a;->d:[Lcom/yandex/metrica/impl/ob/ka$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 2890
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$b$a;->d:[Lcom/yandex/metrica/impl/ob/ka$a;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 2891
    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    .line 2893
    invoke-virtual {p1, v3, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/e;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2897
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$a;->e:[Lcom/yandex/metrica/impl/ob/ka$d;

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    .line 2898
    :goto_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$a;->e:[Lcom/yandex/metrica/impl/ob/ka$d;

    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 2899
    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    const/4 v2, 0x4

    .line 2901
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/e;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2905
    :cond_3
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method public final b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/ka$b$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2941
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    move-result v0

    if-eqz v0, :cond_b

    const/16 v1, 0x8

    if-eq v0, v1, :cond_a

    const/16 v1, 0x10

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    .line 2946
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/g;->a(Lcom/yandex/metrica/impl/ob/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2981
    :cond_1
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/ob/g;->b(Lcom/yandex/metrica/impl/ob/a;I)I

    move-result v0

    .line 2982
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$b$a;->e:[Lcom/yandex/metrica/impl/ob/ka$d;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 2983
    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/ka$d;

    if-eqz v1, :cond_3

    .line 2986
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$b$a;->e:[Lcom/yandex/metrica/impl/ob/ka$d;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2988
    :cond_3
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    .line 2989
    new-instance v2, Lcom/yandex/metrica/impl/ob/ka$d;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/ka$d;-><init>()V

    aput-object v2, v0, v1

    .line 2990
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    .line 2991
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2994
    :cond_4
    new-instance v2, Lcom/yandex/metrica/impl/ob/ka$d;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/ka$d;-><init>()V

    aput-object v2, v0, v1

    .line 2995
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    .line 2996
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$a;->e:[Lcom/yandex/metrica/impl/ob/ka$d;

    goto :goto_0

    .line 2961
    :cond_5
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/ob/g;->b(Lcom/yandex/metrica/impl/ob/a;I)I

    move-result v0

    .line 2962
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$b$a;->d:[Lcom/yandex/metrica/impl/ob/ka$a;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    .line 2963
    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/ka$a;

    if-eqz v1, :cond_7

    .line 2966
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$b$a;->d:[Lcom/yandex/metrica/impl/ob/ka$a;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2968
    :cond_7
    :goto_4
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_8

    .line 2969
    new-instance v2, Lcom/yandex/metrica/impl/ob/ka$a;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/ka$a;-><init>()V

    aput-object v2, v0, v1

    .line 2970
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    .line 2971
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2974
    :cond_8
    new-instance v2, Lcom/yandex/metrica/impl/ob/ka$a;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/ka$a;-><init>()V

    aput-object v2, v0, v1

    .line 2975
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    .line 2976
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$a;->d:[Lcom/yandex/metrica/impl/ob/ka$a;

    goto/16 :goto_0

    .line 2956
    :cond_9
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$a;->c:J

    goto/16 :goto_0

    .line 2952
    :cond_a
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$a;->b:J

    goto/16 :goto_0

    :cond_b
    return-object p0
.end method

.method protected final c()I
    .locals 5

    .line 2910
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/e;->c()I

    move-result v0

    .line 2911
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/ka$b$a;->b:J

    const/4 v3, 0x1

    .line 2912
    invoke-static {v3, v1, v2}, Lcom/yandex/metrica/impl/ob/b;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2913
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/ka$b$a;->c:J

    const/4 v3, 0x2

    .line 2914
    invoke-static {v3, v1, v2}, Lcom/yandex/metrica/impl/ob/b;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2915
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$b$a;->d:[Lcom/yandex/metrica/impl/ob/ka$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v0

    const/4 v0, 0x0

    .line 2916
    :goto_0
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$b$a;->d:[Lcom/yandex/metrica/impl/ob/ka$a;

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 2917
    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    const/4 v4, 0x3

    .line 2920
    invoke-static {v4, v3}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/e;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2924
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$b$a;->e:[Lcom/yandex/metrica/impl/ob/ka$d;

    if-eqz v1, :cond_4

    array-length v1, v1

    if-lez v1, :cond_4

    .line 2925
    :goto_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$b$a;->e:[Lcom/yandex/metrica/impl/ob/ka$d;

    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 2926
    aget-object v1, v1, v2

    if-eqz v1, :cond_3

    const/4 v3, 0x4

    .line 2929
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/e;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v0
.end method

.method public final e()Lcom/yandex/metrica/impl/ob/ka$b$a;
    .locals 2

    const-wide/16 v0, 0x0

    .line 2876
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$a;->b:J

    .line 2877
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$a;->c:J

    .line 2878
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ka$a;->d()[Lcom/yandex/metrica/impl/ob/ka$a;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$a;->d:[Lcom/yandex/metrica/impl/ob/ka$a;

    .line 2879
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ka$d;->d()[Lcom/yandex/metrica/impl/ob/ka$d;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$a;->e:[Lcom/yandex/metrica/impl/ob/ka$d;

    const/4 v0, -0x1

    .line 2880
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$b$a;->a:I

    return-object p0
.end method
