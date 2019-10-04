.class public final Lcom/yandex/metrica/impl/ob/ka$b;
.super Lcom/yandex/metrica/impl/ob/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ka;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/ka$b$a;,
        Lcom/yandex/metrica/impl/ob/ka$b$b;
    }
.end annotation


# instance fields
.field public b:[Lcom/yandex/metrica/impl/ob/ka$b$b;

.field public c:[Lcom/yandex/metrica/impl/ob/ka$b$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3035
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/e;-><init>()V

    .line 3036
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ka$b;->d()Lcom/yandex/metrica/impl/ob/ka$b;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2599
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ka$b;->b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/ka$b;

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

    .line 3049
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$b;->b:[Lcom/yandex/metrica/impl/ob/ka$b$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 3050
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$b;->b:[Lcom/yandex/metrica/impl/ob/ka$b$b;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 3051
    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 3053
    invoke-virtual {p1, v3, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/e;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3057
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$b;->c:[Lcom/yandex/metrica/impl/ob/ka$b$a;

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    .line 3058
    :goto_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$b;->c:[Lcom/yandex/metrica/impl/ob/ka$b$a;

    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 3059
    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    .line 3061
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/e;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3065
    :cond_3
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method public final b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/ka$b;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3097
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    move-result v0

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    .line 3102
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/g;->a(Lcom/yandex/metrica/impl/ob/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 3129
    :cond_1
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/ob/g;->b(Lcom/yandex/metrica/impl/ob/a;I)I

    move-result v0

    .line 3130
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$b;->c:[Lcom/yandex/metrica/impl/ob/ka$b$a;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 3131
    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/ka$b$a;

    if-eqz v1, :cond_3

    .line 3134
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$b;->c:[Lcom/yandex/metrica/impl/ob/ka$b$a;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3136
    :cond_3
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    .line 3137
    new-instance v2, Lcom/yandex/metrica/impl/ob/ka$b$a;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/ka$b$a;-><init>()V

    aput-object v2, v0, v1

    .line 3138
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    .line 3139
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3142
    :cond_4
    new-instance v2, Lcom/yandex/metrica/impl/ob/ka$b$a;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/ka$b$a;-><init>()V

    aput-object v2, v0, v1

    .line 3143
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    .line 3144
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$b;->c:[Lcom/yandex/metrica/impl/ob/ka$b$a;

    goto :goto_0

    .line 3109
    :cond_5
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/ob/g;->b(Lcom/yandex/metrica/impl/ob/a;I)I

    move-result v0

    .line 3110
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$b;->b:[Lcom/yandex/metrica/impl/ob/ka$b$b;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    .line 3111
    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/ka$b$b;

    if-eqz v1, :cond_7

    .line 3114
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$b;->b:[Lcom/yandex/metrica/impl/ob/ka$b$b;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3116
    :cond_7
    :goto_4
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_8

    .line 3117
    new-instance v2, Lcom/yandex/metrica/impl/ob/ka$b$b;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/ka$b$b;-><init>()V

    aput-object v2, v0, v1

    .line 3118
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    .line 3119
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3122
    :cond_8
    new-instance v2, Lcom/yandex/metrica/impl/ob/ka$b$b;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/ka$b$b;-><init>()V

    aput-object v2, v0, v1

    .line 3123
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    .line 3124
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$b;->b:[Lcom/yandex/metrica/impl/ob/ka$b$b;

    goto/16 :goto_0

    :cond_9
    return-object p0
.end method

.method protected final c()I
    .locals 5

    .line 3070
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/e;->c()I

    move-result v0

    .line 3071
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$b;->b:[Lcom/yandex/metrica/impl/ob/ka$b$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v0

    const/4 v0, 0x0

    .line 3072
    :goto_0
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$b;->b:[Lcom/yandex/metrica/impl/ob/ka$b$b;

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 3073
    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    .line 3076
    invoke-static {v4, v3}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/e;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3080
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$b;->c:[Lcom/yandex/metrica/impl/ob/ka$b$a;

    if-eqz v1, :cond_4

    array-length v1, v1

    if-lez v1, :cond_4

    .line 3081
    :goto_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$b;->c:[Lcom/yandex/metrica/impl/ob/ka$b$a;

    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 3082
    aget-object v1, v1, v2

    if-eqz v1, :cond_3

    const/4 v3, 0x2

    .line 3085
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/e;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v0
.end method

.method public final d()Lcom/yandex/metrica/impl/ob/ka$b;
    .locals 1

    .line 3040
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ka$b$b;->d()[Lcom/yandex/metrica/impl/ob/ka$b$b;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$b;->b:[Lcom/yandex/metrica/impl/ob/ka$b$b;

    .line 3041
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ka$b$a;->d()[Lcom/yandex/metrica/impl/ob/ka$b$a;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$b;->c:[Lcom/yandex/metrica/impl/ob/ka$b$a;

    const/4 v0, -0x1

    .line 3042
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$b;->a:I

    return-object p0
.end method
