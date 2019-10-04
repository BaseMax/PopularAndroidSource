.class Lcom/yandex/metrica/impl/bc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/mz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/bc;->a(Lcom/yandex/metrica/impl/ob/ka$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/ka$c;

.field final synthetic b:Lcom/yandex/metrica/impl/bc;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/bc;Lcom/yandex/metrica/impl/ob/ka$c;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/yandex/metrica/impl/bc$1;->b:Lcom/yandex/metrica/impl/bc;

    iput-object p2, p0, Lcom/yandex/metrica/impl/bc$1;->a:Lcom/yandex/metrica/impl/ob/ka$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/my;)V
    .locals 7

    .line 135
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc$1;->a:Lcom/yandex/metrica/impl/ob/ka$c;

    .line 1154
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/my;->c()Ljava/util/List;

    move-result-object v1

    .line 1155
    invoke-static {v1}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/Collection;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 1156
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/ka$c;->f:[Ljava/lang/String;

    const/4 v2, 0x0

    .line 1158
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 1159
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1160
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1161
    iget-object v5, v0, Lcom/yandex/metrica/impl/ob/ka$c;->f:[Ljava/lang/String;

    aput-object v4, v5, v2

    .line 1162
    iget-object v4, p0, Lcom/yandex/metrica/impl/bc$1;->b:Lcom/yandex/metrica/impl/bc;

    iget v5, v4, Lcom/yandex/metrica/impl/bc;->o:I

    iget-object v6, v0, Lcom/yandex/metrica/impl/ob/ka$c;->f:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {v6}, Lcom/yandex/metrica/impl/ob/b;->b(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Lcom/yandex/metrica/impl/bc;->o:I

    .line 1163
    iget-object v4, p0, Lcom/yandex/metrica/impl/bc$1;->b:Lcom/yandex/metrica/impl/bc;

    iget v5, v4, Lcom/yandex/metrica/impl/bc;->o:I

    const/16 v6, 0x9

    invoke-static {v6}, Lcom/yandex/metrica/impl/ob/b;->i(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Lcom/yandex/metrica/impl/bc;->o:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc$1;->a:Lcom/yandex/metrica/impl/ob/ka$c;

    .line 2140
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/my;->a()Ljava/util/List;

    move-result-object p1

    .line 2141
    invoke-static {p1}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2142
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/ka$c$f;

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/ka$c;->g:[Lcom/yandex/metrica/impl/ob/ka$c$f;

    .line 2144
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    .line 2145
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/mu;

    .line 2146
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/ka$c;->g:[Lcom/yandex/metrica/impl/ob/ka$c$f;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/ob/mu;)Lcom/yandex/metrica/impl/ob/ka$c$f;

    move-result-object v1

    aput-object v1, v2, v3

    .line 2147
    iget-object v1, p0, Lcom/yandex/metrica/impl/bc$1;->b:Lcom/yandex/metrica/impl/bc;

    iget v2, v1, Lcom/yandex/metrica/impl/bc;->o:I

    iget-object v4, v0, Lcom/yandex/metrica/impl/ob/ka$c;->g:[Lcom/yandex/metrica/impl/ob/ka$c$f;

    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/yandex/metrica/impl/ob/b;->b(Lcom/yandex/metrica/impl/ob/e;)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v1, Lcom/yandex/metrica/impl/bc;->o:I

    .line 2148
    iget-object v1, p0, Lcom/yandex/metrica/impl/bc$1;->b:Lcom/yandex/metrica/impl/bc;

    iget v2, v1, Lcom/yandex/metrica/impl/bc;->o:I

    const/16 v4, 0xa

    invoke-static {v4}, Lcom/yandex/metrica/impl/ob/b;->i(I)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v1, Lcom/yandex/metrica/impl/bc;->o:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
