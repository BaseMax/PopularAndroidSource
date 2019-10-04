.class public final Lcom/yandex/metrica/impl/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/s$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/yandex/metrica/impl/s$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/yandex/metrica/impl/s$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/yandex/metrica/impl/s$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/yandex/metrica/impl/s$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/yandex/metrica/impl/s$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/yandex/metrica/impl/s$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/yandex/metrica/impl/s$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 111
    sget-object v0, Lcom/yandex/metrica/impl/s$a;->a:Lcom/yandex/metrica/impl/s$a;

    const/4 v1, 0x7

    new-array v2, v1, [Lcom/yandex/metrica/impl/s$a;

    sget-object v3, Lcom/yandex/metrica/impl/s$a;->m:Lcom/yandex/metrica/impl/s$a;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/yandex/metrica/impl/s$a;->g:Lcom/yandex/metrica/impl/s$a;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lcom/yandex/metrica/impl/s$a;->u:Lcom/yandex/metrica/impl/s$a;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    sget-object v3, Lcom/yandex/metrica/impl/s$a;->v:Lcom/yandex/metrica/impl/s$a;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    sget-object v3, Lcom/yandex/metrica/impl/s$a;->x:Lcom/yandex/metrica/impl/s$a;

    const/4 v8, 0x4

    aput-object v3, v2, v8

    sget-object v3, Lcom/yandex/metrica/impl/s$a;->y:Lcom/yandex/metrica/impl/s$a;

    const/4 v9, 0x5

    aput-object v3, v2, v9

    sget-object v3, Lcom/yandex/metrica/impl/s$a;->A:Lcom/yandex/metrica/impl/s$a;

    const/4 v10, 0x6

    aput-object v3, v2, v10

    .line 112
    invoke-static {v0, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/s;->b:Ljava/util/EnumSet;

    .line 123
    sget-object v0, Lcom/yandex/metrica/impl/s$a;->h:Lcom/yandex/metrica/impl/s$a;

    const/16 v2, 0xc

    new-array v2, v2, [Lcom/yandex/metrica/impl/s$a;

    sget-object v3, Lcom/yandex/metrica/impl/s$a;->i:Lcom/yandex/metrica/impl/s$a;

    aput-object v3, v2, v4

    sget-object v3, Lcom/yandex/metrica/impl/s$a;->p:Lcom/yandex/metrica/impl/s$a;

    aput-object v3, v2, v5

    sget-object v3, Lcom/yandex/metrica/impl/s$a;->g:Lcom/yandex/metrica/impl/s$a;

    aput-object v3, v2, v6

    sget-object v3, Lcom/yandex/metrica/impl/s$a;->a:Lcom/yandex/metrica/impl/s$a;

    aput-object v3, v2, v7

    sget-object v3, Lcom/yandex/metrica/impl/s$a;->b:Lcom/yandex/metrica/impl/s$a;

    aput-object v3, v2, v8

    sget-object v3, Lcom/yandex/metrica/impl/s$a;->F:Lcom/yandex/metrica/impl/s$a;

    aput-object v3, v2, v9

    sget-object v3, Lcom/yandex/metrica/impl/s$a;->v:Lcom/yandex/metrica/impl/s$a;

    aput-object v3, v2, v10

    sget-object v3, Lcom/yandex/metrica/impl/s$a;->f:Lcom/yandex/metrica/impl/s$a;

    aput-object v3, v2, v1

    sget-object v1, Lcom/yandex/metrica/impl/s$a;->o:Lcom/yandex/metrica/impl/s$a;

    const/16 v3, 0x8

    aput-object v1, v2, v3

    sget-object v1, Lcom/yandex/metrica/impl/s$a;->x:Lcom/yandex/metrica/impl/s$a;

    const/16 v3, 0x9

    aput-object v1, v2, v3

    sget-object v1, Lcom/yandex/metrica/impl/s$a;->y:Lcom/yandex/metrica/impl/s$a;

    const/16 v3, 0xa

    aput-object v1, v2, v3

    sget-object v1, Lcom/yandex/metrica/impl/s$a;->A:Lcom/yandex/metrica/impl/s$a;

    const/16 v3, 0xb

    aput-object v1, v2, v3

    .line 124
    invoke-static {v0, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/s;->c:Ljava/util/EnumSet;

    .line 140
    sget-object v0, Lcom/yandex/metrica/impl/s$a;->d:Lcom/yandex/metrica/impl/s$a;

    sget-object v1, Lcom/yandex/metrica/impl/s$a;->h:Lcom/yandex/metrica/impl/s$a;

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->i:Lcom/yandex/metrica/impl/s$a;

    .line 141
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/s;->d:Ljava/util/EnumSet;

    .line 147
    sget-object v0, Lcom/yandex/metrica/impl/s$a;->b:Lcom/yandex/metrica/impl/s$a;

    new-array v1, v9, [Lcom/yandex/metrica/impl/s$a;

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->D:Lcom/yandex/metrica/impl/s$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->B:Lcom/yandex/metrica/impl/s$a;

    aput-object v2, v1, v5

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->u:Lcom/yandex/metrica/impl/s$a;

    aput-object v2, v1, v6

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->v:Lcom/yandex/metrica/impl/s$a;

    aput-object v2, v1, v7

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->F:Lcom/yandex/metrica/impl/s$a;

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/s;->a:Ljava/util/EnumSet;

    .line 156
    sget-object v0, Lcom/yandex/metrica/impl/s$a;->z:Lcom/yandex/metrica/impl/s$a;

    sget-object v1, Lcom/yandex/metrica/impl/s$a;->e:Lcom/yandex/metrica/impl/s$a;

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->n:Lcom/yandex/metrica/impl/s$a;

    sget-object v3, Lcom/yandex/metrica/impl/s$a;->c:Lcom/yandex/metrica/impl/s$a;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/s;->e:Ljava/util/EnumSet;

    .line 163
    sget-object v0, Lcom/yandex/metrica/impl/s$a;->q:Lcom/yandex/metrica/impl/s$a;

    sget-object v1, Lcom/yandex/metrica/impl/s$a;->r:Lcom/yandex/metrica/impl/s$a;

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->s:Lcom/yandex/metrica/impl/s$a;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/s;->f:Ljava/util/EnumSet;

    .line 169
    sget-object v0, Lcom/yandex/metrica/impl/s$a;->c:Lcom/yandex/metrica/impl/s$a;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/s;->g:Ljava/util/EnumSet;

    return-void
.end method

.method public static a()Lcom/yandex/metrica/impl/i;
    .locals 6

    .line 236
    new-instance v0, Lcom/yandex/metrica/impl/i;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/i;-><init>()V

    sget-object v1, Lcom/yandex/metrica/impl/s$a;->s:Lcom/yandex/metrica/impl/s$a;

    .line 237
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/i;->a(I)Lcom/yandex/metrica/impl/i;

    move-result-object v0

    .line 1335
    :try_start_0
    new-instance v1, Lorg/a/c;

    invoke-direct {v1}, Lorg/a/c;-><init>()V

    const-string v2, "stat_sending"

    new-instance v3, Lorg/a/c;

    invoke-direct {v3}, Lorg/a/c;-><init>()V

    const-string v4, "disabled"

    const/4 v5, 0x1

    .line 1337
    invoke-virtual {v3, v4, v5}, Lorg/a/c;->put(Ljava/lang/String;Z)Lorg/a/c;

    move-result-object v3

    .line 1336
    invoke-virtual {v1, v2, v3}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v1

    .line 239
    invoke-virtual {v1}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/i;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method static a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/yandex/metrica/impl/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/yandex/metrica/impl/i;"
        }
    .end annotation

    .line 324
    new-instance v0, Lcom/yandex/metrica/impl/e;

    sget-object v1, Lcom/yandex/metrica/impl/s$a;->D:Lcom/yandex/metrica/impl/s$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result v1

    invoke-direct {v0, p2, p1, v1, p0}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 325
    invoke-static {p3}, Lcom/yandex/metrica/impl/ob/ne;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/e;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/yandex/metrica/impl/aw;)Lcom/yandex/metrica/impl/i;
    .locals 3

    const-string v0, ""

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/aw;->a()Ljava/lang/String;

    move-result-object p0

    .line 297
    :goto_0
    new-instance v1, Lcom/yandex/metrica/impl/e;

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->A:Lcom/yandex/metrica/impl/s$a;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result v2

    invoke-direct {v1, p0, v0, v2}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1
.end method

.method public static a(Lcom/yandex/metrica/impl/ob/kw;)Lcom/yandex/metrica/impl/i;
    .locals 3

    if-nez p0, :cond_0

    .line 269
    new-instance p0, Lcom/yandex/metrica/impl/e;

    sget-object v0, Lcom/yandex/metrica/impl/s$a;->w:Lcom/yandex/metrica/impl/s$a;

    .line 270
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result v0

    const-string v1, ""

    invoke-direct {p0, v1, v0}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;I)V

    return-object p0

    .line 272
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/e;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kw;->a:Ljava/lang/String;

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->w:Lcom/yandex/metrica/impl/s$a;

    .line 274
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;I)V

    .line 275
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kw;->a()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/e;->a([B)Lcom/yandex/metrica/impl/i;

    move-result-object p0

    return-object p0
.end method

.method static a(Lcom/yandex/metrica/impl/s$a;Ljava/lang/String;)Lcom/yandex/metrica/impl/i;
    .locals 2

    .line 204
    new-instance v0, Lcom/yandex/metrica/impl/e;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result p0

    const-string v1, ""

    invoke-direct {v0, p1, v1, p0}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;
    .locals 2

    .line 212
    new-instance v0, Lcom/yandex/metrica/impl/e;

    sget-object v1, Lcom/yandex/metrica/impl/s$a;->c:Lcom/yandex/metrica/impl/s$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/i;
    .locals 2

    .line 216
    new-instance v0, Lcom/yandex/metrica/impl/e;

    sget-object v1, Lcom/yandex/metrica/impl/s$a;->c:Lcom/yandex/metrica/impl/s$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result v1

    invoke-direct {v0, p1, p0, v1}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static a(I)Z
    .locals 1

    .line 188
    sget-object v0, Lcom/yandex/metrica/impl/s;->d:Ljava/util/EnumSet;

    invoke-static {p0}, Lcom/yandex/metrica/impl/s$a;->a(I)Lcom/yandex/metrica/impl/s$a;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/yandex/metrica/impl/s$a;)Z
    .locals 1

    .line 180
    sget-object v0, Lcom/yandex/metrica/impl/s;->b:Ljava/util/EnumSet;

    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static b(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;
    .locals 2

    .line 251
    new-instance v0, Lcom/yandex/metrica/impl/e;

    sget-object v1, Lcom/yandex/metrica/impl/s$a;->C:Lcom/yandex/metrica/impl/s$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/i;
    .locals 2

    .line 220
    new-instance v0, Lcom/yandex/metrica/impl/e;

    sget-object v1, Lcom/yandex/metrica/impl/s$a;->t:Lcom/yandex/metrica/impl/s$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result v1

    invoke-direct {v0, p1, p0, v1}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static b(I)Z
    .locals 1

    .line 192
    sget-object v0, Lcom/yandex/metrica/impl/s;->e:Ljava/util/EnumSet;

    invoke-static {p0}, Lcom/yandex/metrica/impl/s$a;->a(I)Lcom/yandex/metrica/impl/s$a;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Lcom/yandex/metrica/impl/s$a;)Z
    .locals 1

    .line 184
    sget-object v0, Lcom/yandex/metrica/impl/s;->c:Ljava/util/EnumSet;

    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Lcom/yandex/metrica/impl/s$a;)Lcom/yandex/metrica/impl/i;
    .locals 2

    .line 208
    new-instance v0, Lcom/yandex/metrica/impl/e;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result p0

    const-string v1, ""

    invoke-direct {v0, v1, p0}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method static c(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;
    .locals 2

    .line 255
    new-instance v0, Lcom/yandex/metrica/impl/e;

    sget-object v1, Lcom/yandex/metrica/impl/s$a;->d:Lcom/yandex/metrica/impl/s$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method static c(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/i;
    .locals 2

    .line 247
    new-instance v0, Lcom/yandex/metrica/impl/e;

    sget-object v1, Lcom/yandex/metrica/impl/s$a;->e:Lcom/yandex/metrica/impl/s$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result v1

    invoke-direct {v0, p1, p0, v1}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static c(I)Z
    .locals 1

    .line 196
    sget-object v0, Lcom/yandex/metrica/impl/s;->g:Ljava/util/EnumSet;

    invoke-static {p0}, Lcom/yandex/metrica/impl/s$a;->a(I)Lcom/yandex/metrica/impl/s$a;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;
    .locals 3

    .line 263
    new-instance v0, Lcom/yandex/metrica/impl/e;

    sget-object v1, Lcom/yandex/metrica/impl/s$a;->u:Lcom/yandex/metrica/impl/s$a;

    .line 264
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result v1

    const-string v2, ""

    invoke-direct {v0, v2, p0, v1}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/i;
    .locals 2

    .line 259
    new-instance v0, Lcom/yandex/metrica/impl/e;

    sget-object v1, Lcom/yandex/metrica/impl/s$a;->z:Lcom/yandex/metrica/impl/s$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result v1

    invoke-direct {v0, p1, p0, v1}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static d(I)Z
    .locals 1

    .line 200
    sget-object v0, Lcom/yandex/metrica/impl/s;->f:Ljava/util/EnumSet;

    invoke-static {p0}, Lcom/yandex/metrica/impl/s$a;->a(I)Lcom/yandex/metrica/impl/s$a;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static e(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;
    .locals 1

    const-string v0, "open"

    .line 280
    invoke-static {v0, p0}, Lcom/yandex/metrica/impl/s;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object p0

    return-object p0
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/i;
    .locals 2

    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    .line 289
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "link"

    .line 290
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    new-instance p0, Lcom/yandex/metrica/impl/e;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ne;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/yandex/metrica/impl/s$a;->E:Lcom/yandex/metrica/impl/s$a;

    .line 292
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result v0

    const-string v1, ""

    invoke-direct {p0, p1, v1, v0}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0
.end method

.method static f(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;
    .locals 1

    const-string v0, "referral"

    .line 284
    invoke-static {v0, p0}, Lcom/yandex/metrica/impl/s;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object p0

    return-object p0
.end method
