.class Lcom/yandex/metrica/impl/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/am$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/gc;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/gc;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/gc;

    return-void
.end method

.method private static a(JJJ)Z
    .locals 1

    cmp-long v0, p0, p4

    if-eqz v0, :cond_0

    cmp-long p0, p2, p4

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 87
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 11

    .line 63
    new-instance v0, Lcom/yandex/metrica/impl/ob/iy;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/iy;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/iy;->c()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/gc;

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/gc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/gc;

    .line 66
    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/gc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    .line 1091
    :cond_0
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/iy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1092
    iget-object v2, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/gc;

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/gc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/yandex/metrica/impl/f$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1093
    iget-object v2, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/gc;

    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/gc;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gc;

    .line 1098
    :cond_1
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/iy;->a()Ljava/lang/String;

    move-result-object p1

    .line 1099
    iget-object v2, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/gc;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/gc;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/yandex/metrica/impl/f$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1100
    iget-object v2, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/gc;

    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/gc;->m(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gc;

    .line 1105
    :cond_2
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/iy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1106
    iget-object v2, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/gc;

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/gc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/yandex/metrica/impl/f$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1107
    iget-object v2, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/gc;

    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/gc;->g(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gc;

    .line 1112
    :cond_3
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/iy;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1113
    iget-object v2, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/gc;

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/gc;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/yandex/metrica/impl/f$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1114
    iget-object v2, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/gc;

    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/gc;->j(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gc;

    .line 1119
    :cond_4
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/iy;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1120
    iget-object v2, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/gc;

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/gc;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/yandex/metrica/impl/f$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1121
    iget-object v2, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/gc;

    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/gc;->k(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gc;

    .line 1126
    :cond_5
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/iy;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1127
    iget-object v2, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/gc;

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/gc;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/f$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1128
    iget-object v1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/gc;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/gc;->l(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gc;

    :cond_6
    const-wide/16 v1, -0x1

    .line 1134
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/iy;->a(J)J

    move-result-wide v9

    .line 1135
    iget-object p1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/gc;

    invoke-virtual {p1, v1, v2}, Lcom/yandex/metrica/impl/ob/gc;->a(J)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    move-wide v3, v9

    invoke-static/range {v3 .. v8}, Lcom/yandex/metrica/impl/f$a;->a(JJJ)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1136
    iget-object p1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/gc;

    invoke-virtual {p1, v9, v10}, Lcom/yandex/metrica/impl/ob/gc;->d(J)Lcom/yandex/metrica/impl/ob/gc;

    .line 1142
    :cond_7
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/iy;->b(J)J

    move-result-wide v9

    .line 1143
    iget-object p1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/gc;

    invoke-virtual {p1, v1, v2}, Lcom/yandex/metrica/impl/ob/gc;->b(J)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    move-wide v3, v9

    invoke-static/range {v3 .. v8}, Lcom/yandex/metrica/impl/f$a;->a(JJJ)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1144
    iget-object p1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/gc;

    invoke-virtual {p1, v9, v10}, Lcom/yandex/metrica/impl/ob/gc;->e(J)Lcom/yandex/metrica/impl/ob/gc;

    .line 77
    :cond_8
    iget-object p1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/gc;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/gc;->i()V

    .line 78
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/iy;->b()Lcom/yandex/metrica/impl/ob/iy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/iy;->j()V

    :cond_9
    return-void
.end method
