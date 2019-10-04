.class public Lcom/yandex/metrica/profile/BirthDateAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/jn;


# direct methods
.method constructor <init>()V
    .locals 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/yandex/metrica/impl/ob/jn;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ot;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/ot;-><init>()V

    new-instance v2, Lcom/yandex/metrica/impl/ob/jv;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/jv;-><init>()V

    const-string v3, "appmetrica_birth_date"

    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/metrica/impl/ob/jn;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/jh;)V

    iput-object v0, p0, Lcom/yandex/metrica/profile/BirthDateAttribute;->a:Lcom/yandex/metrica/impl/ob/jn;

    return-void
.end method

.method private static a(I)Ljava/util/Calendar;
    .locals 2

    .line 257
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v1, 0x1

    .line 258
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method private static a(II)Ljava/util/Calendar;
    .locals 2

    .line 263
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v1, 0x1

    .line 264
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr p1, v1

    const/4 p0, 0x2

    .line 265
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method private static a(III)Ljava/util/Calendar;
    .locals 2

    .line 270
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v1, 0x1

    .line 271
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr p1, v1

    const/4 p0, 0x2

    .line 272
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x5

    .line 273
    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method


# virtual methods
.method a(Ljava/util/Calendar;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/ji;)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/ji;",
            ")",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/jz;",
            ">;"
        }
    .end annotation

    .line 283
    new-instance v0, Lcom/yandex/metrica/profile/UserProfileUpdate;

    new-instance v7, Lcom/yandex/metrica/impl/ob/jw;

    iget-object v1, p0, Lcom/yandex/metrica/profile/BirthDateAttribute;->a:Lcom/yandex/metrica/impl/ob/jn;

    .line 285
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/jn;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yandex/metrica/impl/ob/ol;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/ol;-><init>()V

    new-instance v5, Lcom/yandex/metrica/impl/ob/ot;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/ot;-><init>()V

    move-object v1, v7

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/jw;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/os;Lcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/ji;)V

    invoke-direct {v0, v7}, Lcom/yandex/metrica/profile/UserProfileUpdate;-><init>(Lcom/yandex/metrica/impl/ob/jz;)V

    return-object v0
.end method

.method public withAge(I)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/jz;",
            ">;"
        }
    .end annotation

    .line 182
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 183
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0}, Lcom/yandex/metrica/profile/BirthDateAttribute;->a(I)Ljava/util/Calendar;

    move-result-object p1

    new-instance v0, Lcom/yandex/metrica/impl/ob/jk;

    iget-object v1, p0, Lcom/yandex/metrica/profile/BirthDateAttribute;->a:Lcom/yandex/metrica/impl/ob/jn;

    .line 185
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/jn;->b()Lcom/yandex/metrica/impl/ob/jh;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/jk;-><init>(Lcom/yandex/metrica/impl/ob/jh;)V

    const-string v1, "yyyy"

    .line 182
    invoke-virtual {p0, p1, v1, v0}, Lcom/yandex/metrica/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/ji;)Lcom/yandex/metrica/profile/UserProfileUpdate;

    move-result-object p1

    return-object p1
.end method

.method public withAgeIfUndefined(I)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/jz;",
            ">;"
        }
    .end annotation

    .line 201
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 202
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0}, Lcom/yandex/metrica/profile/BirthDateAttribute;->a(I)Ljava/util/Calendar;

    move-result-object p1

    new-instance v0, Lcom/yandex/metrica/impl/ob/ju;

    iget-object v1, p0, Lcom/yandex/metrica/profile/BirthDateAttribute;->a:Lcom/yandex/metrica/impl/ob/jn;

    .line 204
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/jn;->b()Lcom/yandex/metrica/impl/ob/jh;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ju;-><init>(Lcom/yandex/metrica/impl/ob/jh;)V

    const-string v1, "yyyy"

    .line 201
    invoke-virtual {p0, p1, v1, v0}, Lcom/yandex/metrica/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/ji;)Lcom/yandex/metrica/profile/UserProfileUpdate;

    move-result-object p1

    return-object p1
.end method

.method public withBirthDate(I)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/jz;",
            ">;"
        }
    .end annotation

    .line 72
    invoke-static {p1}, Lcom/yandex/metrica/profile/BirthDateAttribute;->a(I)Ljava/util/Calendar;

    move-result-object p1

    new-instance v0, Lcom/yandex/metrica/impl/ob/jk;

    iget-object v1, p0, Lcom/yandex/metrica/profile/BirthDateAttribute;->a:Lcom/yandex/metrica/impl/ob/jn;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/jn;->b()Lcom/yandex/metrica/impl/ob/jh;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/jk;-><init>(Lcom/yandex/metrica/impl/ob/jh;)V

    const-string v1, "yyyy"

    invoke-virtual {p0, p1, v1, v0}, Lcom/yandex/metrica/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/ji;)Lcom/yandex/metrica/profile/UserProfileUpdate;

    move-result-object p1

    return-object p1
.end method

.method public withBirthDate(II)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/jz;",
            ">;"
        }
    .end annotation

    .line 105
    invoke-static {p1, p2}, Lcom/yandex/metrica/profile/BirthDateAttribute;->a(II)Ljava/util/Calendar;

    move-result-object p1

    new-instance p2, Lcom/yandex/metrica/impl/ob/jk;

    iget-object v0, p0, Lcom/yandex/metrica/profile/BirthDateAttribute;->a:Lcom/yandex/metrica/impl/ob/jn;

    .line 107
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/jn;->b()Lcom/yandex/metrica/impl/ob/jh;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/yandex/metrica/impl/ob/jk;-><init>(Lcom/yandex/metrica/impl/ob/jh;)V

    const-string v0, "yyyy-MM"

    .line 104
    invoke-virtual {p0, p1, v0, p2}, Lcom/yandex/metrica/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/ji;)Lcom/yandex/metrica/profile/UserProfileUpdate;

    move-result-object p1

    return-object p1
.end method

.method public withBirthDate(III)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/jz;",
            ">;"
        }
    .end annotation

    .line 143
    invoke-static {p1, p2, p3}, Lcom/yandex/metrica/profile/BirthDateAttribute;->a(III)Ljava/util/Calendar;

    move-result-object p1

    new-instance p2, Lcom/yandex/metrica/impl/ob/jk;

    iget-object p3, p0, Lcom/yandex/metrica/profile/BirthDateAttribute;->a:Lcom/yandex/metrica/impl/ob/jn;

    .line 145
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/jn;->b()Lcom/yandex/metrica/impl/ob/jh;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/yandex/metrica/impl/ob/jk;-><init>(Lcom/yandex/metrica/impl/ob/jh;)V

    const-string p3, "yyyy-MM-dd"

    .line 142
    invoke-virtual {p0, p1, p3, p2}, Lcom/yandex/metrica/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/ji;)Lcom/yandex/metrica/profile/UserProfileUpdate;

    move-result-object p1

    return-object p1
.end method

.method public withBirthDate(Ljava/util/Calendar;)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            ")",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/jz;",
            ">;"
        }
    .end annotation

    .line 218
    new-instance v0, Lcom/yandex/metrica/impl/ob/jk;

    iget-object v1, p0, Lcom/yandex/metrica/profile/BirthDateAttribute;->a:Lcom/yandex/metrica/impl/ob/jn;

    .line 221
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/jn;->b()Lcom/yandex/metrica/impl/ob/jh;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/jk;-><init>(Lcom/yandex/metrica/impl/ob/jh;)V

    const-string v1, "yyyy-MM-dd"

    .line 218
    invoke-virtual {p0, p1, v1, v0}, Lcom/yandex/metrica/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/ji;)Lcom/yandex/metrica/profile/UserProfileUpdate;

    move-result-object p1

    return-object p1
.end method

.method public withBirthDateIfUndefined(I)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/jz;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-static {p1}, Lcom/yandex/metrica/profile/BirthDateAttribute;->a(I)Ljava/util/Calendar;

    move-result-object p1

    new-instance v0, Lcom/yandex/metrica/impl/ob/ju;

    iget-object v1, p0, Lcom/yandex/metrica/profile/BirthDateAttribute;->a:Lcom/yandex/metrica/impl/ob/jn;

    .line 88
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/jn;->b()Lcom/yandex/metrica/impl/ob/jh;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ju;-><init>(Lcom/yandex/metrica/impl/ob/jh;)V

    const-string v1, "yyyy"

    .line 85
    invoke-virtual {p0, p1, v1, v0}, Lcom/yandex/metrica/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/ji;)Lcom/yandex/metrica/profile/UserProfileUpdate;

    move-result-object p1

    return-object p1
.end method

.method public withBirthDateIfUndefined(II)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/jz;",
            ">;"
        }
    .end annotation

    .line 123
    invoke-static {p1, p2}, Lcom/yandex/metrica/profile/BirthDateAttribute;->a(II)Ljava/util/Calendar;

    move-result-object p1

    new-instance p2, Lcom/yandex/metrica/impl/ob/ju;

    iget-object v0, p0, Lcom/yandex/metrica/profile/BirthDateAttribute;->a:Lcom/yandex/metrica/impl/ob/jn;

    .line 125
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/jn;->b()Lcom/yandex/metrica/impl/ob/jh;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/yandex/metrica/impl/ob/ju;-><init>(Lcom/yandex/metrica/impl/ob/jh;)V

    const-string v0, "yyyy-MM"

    .line 122
    invoke-virtual {p0, p1, v0, p2}, Lcom/yandex/metrica/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/ji;)Lcom/yandex/metrica/profile/UserProfileUpdate;

    move-result-object p1

    return-object p1
.end method

.method public withBirthDateIfUndefined(III)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/jz;",
            ">;"
        }
    .end annotation

    .line 164
    invoke-static {p1, p2, p3}, Lcom/yandex/metrica/profile/BirthDateAttribute;->a(III)Ljava/util/Calendar;

    move-result-object p1

    new-instance p2, Lcom/yandex/metrica/impl/ob/ju;

    iget-object p3, p0, Lcom/yandex/metrica/profile/BirthDateAttribute;->a:Lcom/yandex/metrica/impl/ob/jn;

    .line 166
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/jn;->b()Lcom/yandex/metrica/impl/ob/jh;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/yandex/metrica/impl/ob/ju;-><init>(Lcom/yandex/metrica/impl/ob/jh;)V

    const-string p3, "yyyy-MM-dd"

    .line 163
    invoke-virtual {p0, p1, p3, p2}, Lcom/yandex/metrica/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/ji;)Lcom/yandex/metrica/profile/UserProfileUpdate;

    move-result-object p1

    return-object p1
.end method

.method public withBirthDateIfUndefined(Ljava/util/Calendar;)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            ")",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/jz;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v0, Lcom/yandex/metrica/impl/ob/ju;

    iget-object v1, p0, Lcom/yandex/metrica/profile/BirthDateAttribute;->a:Lcom/yandex/metrica/impl/ob/jn;

    .line 237
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/jn;->b()Lcom/yandex/metrica/impl/ob/jh;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ju;-><init>(Lcom/yandex/metrica/impl/ob/jh;)V

    const-string v1, "yyyy-MM-dd"

    .line 234
    invoke-virtual {p0, p1, v1, v0}, Lcom/yandex/metrica/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/ji;)Lcom/yandex/metrica/profile/UserProfileUpdate;

    move-result-object p1

    return-object p1
.end method

.method public withValueReset()Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/jz;",
            ">;"
        }
    .end annotation

    .line 247
    new-instance v0, Lcom/yandex/metrica/profile/UserProfileUpdate;

    new-instance v1, Lcom/yandex/metrica/impl/ob/jt;

    iget-object v2, p0, Lcom/yandex/metrica/profile/BirthDateAttribute;->a:Lcom/yandex/metrica/impl/ob/jn;

    .line 249
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/jn;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/yandex/metrica/impl/ob/ot;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/ot;-><init>()V

    new-instance v4, Lcom/yandex/metrica/impl/ob/jv;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/jv;-><init>()V

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/jt;-><init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/jh;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/profile/UserProfileUpdate;-><init>(Lcom/yandex/metrica/impl/ob/jz;)V

    return-object v0
.end method
