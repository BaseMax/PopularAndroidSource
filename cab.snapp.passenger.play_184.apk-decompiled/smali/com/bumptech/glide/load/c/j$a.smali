.class public final Lcom/bumptech/glide/load/c/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c/i;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private c:Z

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c/i;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "http.agent"

    .line 1238
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1239
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 1243
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 1246
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_1

    const/16 v5, 0x9

    if-ne v4, v5, :cond_2

    :cond_1
    const/16 v5, 0x7f

    if-ge v4, v5, :cond_2

    .line 1248
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v4, 0x3f

    .line 1250
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1253
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_2
    sput-object v0, Lcom/bumptech/glide/load/c/j$a;->a:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 116
    sget-object v1, Lcom/bumptech/glide/load/c/j$a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 117
    new-instance v1, Lcom/bumptech/glide/load/c/j$b;

    sget-object v2, Lcom/bumptech/glide/load/c/j$a;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/c/j$b;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "User-Agent"

    .line 117
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/c/j$a;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/bumptech/glide/load/c/j$a;->c:Z

    .line 125
    sget-object v1, Lcom/bumptech/glide/load/c/j$a;->b:Ljava/util/Map;

    iput-object v1, p0, Lcom/bumptech/glide/load/c/j$a;->d:Ljava/util/Map;

    .line 126
    iput-boolean v0, p0, Lcom/bumptech/glide/load/c/j$a;->e:Z

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c/i;",
            ">;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/bumptech/glide/load/c/j$a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    iget-object v1, p0, Lcom/bumptech/glide/load/c/j$a;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private a()V
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/bumptech/glide/load/c/j$a;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 208
    iput-boolean v0, p0, Lcom/bumptech/glide/load/c/j$a;->c:Z

    .line 209
    invoke-direct {p0}, Lcom/bumptech/glide/load/c/j$a;->b()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/c/j$a;->d:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method private b()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c/i;",
            ">;>;"
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/bumptech/glide/load/c/j$a;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 223
    iget-object v1, p0, Lcom/bumptech/glide/load/c/j$a;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 225
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 226
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final addHeader(Ljava/lang/String;Lcom/bumptech/glide/load/c/i;)Lcom/bumptech/glide/load/c/j$a;
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/bumptech/glide/load/c/j$a;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "User-Agent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/c/j$a;->setHeader(Ljava/lang/String;Lcom/bumptech/glide/load/c/i;)Lcom/bumptech/glide/load/c/j$a;

    move-result-object p1

    return-object p1

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/c/j$a;->a()V

    .line 156
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/c/j$a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/c/j$a;
    .locals 1

    .line 137
    new-instance v0, Lcom/bumptech/glide/load/c/j$b;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/c/j$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/load/c/j$a;->addHeader(Ljava/lang/String;Lcom/bumptech/glide/load/c/i;)Lcom/bumptech/glide/load/c/j$a;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/bumptech/glide/load/c/j;
    .locals 2

    const/4 v0, 0x1

    .line 217
    iput-boolean v0, p0, Lcom/bumptech/glide/load/c/j$a;->c:Z

    .line 218
    new-instance v0, Lcom/bumptech/glide/load/c/j;

    iget-object v1, p0, Lcom/bumptech/glide/load/c/j$a;->d:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/c/j;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final setHeader(Ljava/lang/String;Lcom/bumptech/glide/load/c/i;)Lcom/bumptech/glide/load/c/j$a;
    .locals 1

    .line 181
    invoke-direct {p0}, Lcom/bumptech/glide/load/c/j$a;->a()V

    if-nez p2, :cond_0

    .line 183
    iget-object p2, p0, Lcom/bumptech/glide/load/c/j$a;->d:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 185
    :cond_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/c/j$a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 186
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 187
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    :goto_0
    iget-boolean p2, p0, Lcom/bumptech/glide/load/c/j$a;->e:Z

    if-eqz p2, :cond_1

    const-string p2, "User-Agent"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 191
    iput-boolean p1, p0, Lcom/bumptech/glide/load/c/j$a;->e:Z

    :cond_1
    return-object p0
.end method

.method public final setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/c/j$a;
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 171
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/c/j$b;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/c/j$b;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/c/j$a;->setHeader(Ljava/lang/String;Lcom/bumptech/glide/load/c/i;)Lcom/bumptech/glide/load/c/j$a;

    move-result-object p1

    return-object p1
.end method
