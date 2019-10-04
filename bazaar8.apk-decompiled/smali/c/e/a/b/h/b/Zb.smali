.class public final Lc/e/a/b/h/b/Zb;
.super Lc/e/a/b/h/b/Sb;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Tb;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/e/a/b/h/b/Sb;-><init>(Lc/e/a/b/h/b/Tb;)V

    return-void
.end method

.method public static a(Lc/e/a/b/g/f/ba;Ljava/lang/String;)Lc/e/a/b/g/f/K;
    .locals 4

    .line 25
    iget-object p0, p0, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 26
    invoke-virtual {v2}, Lc/e/a/b/g/f/K;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/util/BitSet;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/BitSet;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x40

    div-int/2addr v0, v1

    .line 169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    const-wide/16 v5, 0x0

    move-wide v6, v5

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_1

    shl-int/lit8 v8, v4, 0x6

    add-int/2addr v8, v5

    .line 170
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 171
    invoke-virtual {p0, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_0

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v5

    or-long/2addr v6, v8

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 172
    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static a(Ljava/lang/StringBuilder;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, "  "

    .line 145
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 146
    invoke-static {p0, p1}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;I)V

    .line 147
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    .line 148
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    .line 150
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)"

    .line 164
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x136

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/util/List;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)Z"
        }
    .end annotation

    .line 166
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x6

    if-ge p1, v0, :cond_0

    div-int/lit8 v0, p1, 0x40

    .line 167
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    rem-int/lit8 p1, p1, 0x40

    shl-long p0, v2, p1

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a([Lc/e/a/b/g/f/K;Ljava/lang/String;Ljava/lang/Object;)[Lc/e/a/b/g/f/K;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 27
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 28
    aget-object v2, p0, v1

    .line 29
    invoke-virtual {v2}, Lc/e/a/b/g/f/nb;->k()Lc/e/a/b/g/f/nb$a;

    move-result-object v2

    .line 30
    check-cast v2, Lc/e/a/b/g/f/K$a;

    .line 31
    invoke-virtual {v2}, Lc/e/a/b/g/f/K$a;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 32
    invoke-virtual {v2}, Lc/e/a/b/g/f/K$a;->m()Lc/e/a/b/g/f/K$a;

    invoke-virtual {v2}, Lc/e/a/b/g/f/K$a;->k()Lc/e/a/b/g/f/K$a;

    invoke-virtual {v2}, Lc/e/a/b/g/f/K$a;->p()Lc/e/a/b/g/f/K$a;

    .line 33
    instance-of p1, p2, Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 34
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Lc/e/a/b/g/f/K$a;->a(J)Lc/e/a/b/g/f/K$a;

    goto :goto_1

    .line 35
    :cond_0
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 36
    check-cast p2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Lc/e/a/b/g/f/K$a;->b(Ljava/lang/String;)Lc/e/a/b/g/f/K$a;

    goto :goto_1

    .line 37
    :cond_1
    instance-of p1, p2, Ljava/lang/Double;

    if-eqz p1, :cond_2

    .line 38
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Lc/e/a/b/g/f/K$a;->a(D)Lc/e/a/b/g/f/K$a;

    .line 39
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lc/e/a/b/g/f/nb$a;->o()Lc/e/a/b/g/f/Sb;

    move-result-object p1

    check-cast p1, Lc/e/a/b/g/f/K;

    aput-object p1, p0, v1

    return-object p0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    :cond_4
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lc/e/a/b/g/f/K;

    .line 41
    array-length v2, p0

    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    invoke-static {}, Lc/e/a/b/g/f/K;->B()Lc/e/a/b/g/f/K$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/e/a/b/g/f/K$a;->a(Ljava/lang/String;)Lc/e/a/b/g/f/K$a;

    .line 43
    instance-of p1, p2, Ljava/lang/Long;

    if-eqz p1, :cond_5

    .line 44
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lc/e/a/b/g/f/K$a;->a(J)Lc/e/a/b/g/f/K$a;

    goto :goto_2

    .line 45
    :cond_5
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 46
    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lc/e/a/b/g/f/K$a;->b(Ljava/lang/String;)Lc/e/a/b/g/f/K$a;

    goto :goto_2

    .line 47
    :cond_6
    instance-of p1, p2, Ljava/lang/Double;

    if-eqz p1, :cond_7

    .line 48
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lc/e/a/b/g/f/K$a;->a(D)Lc/e/a/b/g/f/K$a;

    .line 49
    :cond_7
    :goto_2
    array-length p0, p0

    invoke-virtual {v0}, Lc/e/a/b/g/f/nb$a;->o()Lc/e/a/b/g/f/Sb;

    move-result-object p1

    check-cast p1, Lc/e/a/b/g/f/K;

    aput-object p1, v1, p0

    return-object v1
.end method

.method public static b(Lc/e/a/b/g/f/ba;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lc/e/a/b/h/b/Zb;->a(Lc/e/a/b/g/f/ba;Ljava/lang/String;)Lc/e/a/b/g/f/K;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/g/f/K;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lc/e/a/b/g/f/K;->t()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lc/e/a/b/g/f/K;->v()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lc/e/a/b/g/f/K;->w()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lc/e/a/b/g/f/K;->y()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0}, Lc/e/a/b/g/f/K;->z()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a([B)J
    .locals 2

    .line 174
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->g()Lc/e/a/b/h/b/cc;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->l()V

    .line 176
    invoke-static {}, Lc/e/a/b/h/b/cc;->t()Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string v0, "Failed to get MD5"

    invoke-virtual {p1, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 178
    :cond_0
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 179
    invoke-static {p1}, Lc/e/a/b/h/b/cc;->a([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([B",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 151
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 152
    :try_start_0
    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 153
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 154
    invoke-interface {p2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;
    :try_end_0
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 156
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string p2, "Failed to load parcelable from buffer"

    invoke-virtual {p1, p2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    .line 158
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public final a(Lc/e/a/b/g/f/T;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    const-string p1, "null"

    return-object p1

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nevent_filter {\n"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v1, p1, Lc/e/a/b/g/f/T;->d:Ljava/lang/Integer;

    const/4 v2, 0x0

    const-string v3, "filter_id"

    invoke-static {v0, v2, v3, v1}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object v1

    iget-object v3, p1, Lc/e/a/b/g/f/T;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lc/e/a/b/h/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "event_name"

    invoke-static {v0, v2, v3, v1}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 54
    iget-object v1, p1, Lc/e/a/b/g/f/T;->h:Lc/e/a/b/g/f/W;

    const/4 v3, 0x1

    const-string v4, "event_count_filter"

    invoke-virtual {p0, v0, v3, v4, v1}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Lc/e/a/b/g/f/W;)V

    const-string v1, "  filters {\n"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object p1, p1, Lc/e/a/b/g/f/T;->f:[Lc/e/a/b/g/f/U;

    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, p1, v2

    const/4 v5, 0x2

    .line 57
    invoke-virtual {p0, v0, v5, v4}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILc/e/a/b/g/f/U;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {v0, v3}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;I)V

    const-string p1, "}\n}\n"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lc/e/a/b/g/f/X;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "null"

    return-object p1

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nproperty_filter {\n"

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v1, p1, Lc/e/a/b/g/f/X;->d:Ljava/lang/Integer;

    const/4 v2, 0x0

    const-string v3, "filter_id"

    invoke-static {v0, v2, v3, v1}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object v1

    iget-object v3, p1, Lc/e/a/b/g/f/X;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lc/e/a/b/h/b/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "property_name"

    .line 65
    invoke-static {v0, v2, v3, v1}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 66
    iget-object p1, p1, Lc/e/a/b/g/f/X;->f:Lc/e/a/b/g/f/U;

    invoke-virtual {p0, v0, v1, p1}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILc/e/a/b/g/f/U;)V

    const-string p1, "}\n"

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lc/e/a/b/g/f/K$a;Ljava/lang/Object;)V
    .locals 2

    .line 10
    invoke-static {p2}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p1}, Lc/e/a/b/g/f/K$a;->k()Lc/e/a/b/g/f/K$a;

    invoke-virtual {p1}, Lc/e/a/b/g/f/K$a;->m()Lc/e/a/b/g/f/K$a;

    invoke-virtual {p1}, Lc/e/a/b/g/f/K$a;->p()Lc/e/a/b/g/f/K$a;

    .line 12
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 13
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lc/e/a/b/g/f/K$a;->b(Ljava/lang/String;)Lc/e/a/b/g/f/K$a;

    return-void

    .line 14
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 15
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lc/e/a/b/g/f/K$a;->a(J)Lc/e/a/b/g/f/K$a;

    return-void

    .line 16
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 17
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lc/e/a/b/g/f/K$a;->a(D)Lc/e/a/b/g/f/K$a;

    return-void

    .line 18
    :cond_2
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string v0, "Ignoring invalid (type) event param value"

    invoke-virtual {p1, v0, p2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lc/e/a/b/g/f/N$a;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lc/e/a/b/g/f/N$a;->j()Lc/e/a/b/g/f/N$a;

    invoke-virtual {p1}, Lc/e/a/b/g/f/N$a;->k()Lc/e/a/b/g/f/N$a;

    invoke-virtual {p1}, Lc/e/a/b/g/f/N$a;->m()Lc/e/a/b/g/f/N$a;

    .line 3
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lc/e/a/b/g/f/N$a;->b(Ljava/lang/String;)Lc/e/a/b/g/f/N$a;

    return-void

    .line 5
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 6
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lc/e/a/b/g/f/N$a;->b(J)Lc/e/a/b/g/f/N$a;

    return-void

    .line 7
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 8
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lc/e/a/b/g/f/N$a;->a(D)Lc/e/a/b/g/f/N$a;

    return-void

    .line 9
    :cond_2
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string v0, "Ignoring invalid (type) user attribute value"

    invoke-virtual {p1, v0, p2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;ILc/e/a/b/g/f/U;)V
    .locals 7

    if-nez p3, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-static {p1, p2}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;I)V

    const-string v0, "filter {\n"

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v0, p3, Lc/e/a/b/g/f/U;->f:Ljava/lang/Boolean;

    const-string v1, "complement"

    invoke-static {p1, p2, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 123
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object v0

    iget-object v1, p3, Lc/e/a/b/g/f/U;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "param_name"

    invoke-static {p1, p2, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, p2, 0x1

    .line 124
    iget-object v1, p3, Lc/e/a/b/g/f/U;->d:Lc/e/a/b/g/f/Y;

    const-string v2, "}\n"

    if-eqz v1, :cond_4

    .line 125
    invoke-static {p1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, "string_filter"

    .line 126
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " {\n"

    .line 127
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v3, v1, Lc/e/a/b/g/f/Y;->c:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    if-eqz v3, :cond_1

    .line 129
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "match_type"

    invoke-static {p1, v0, v4, v3}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 130
    :cond_1
    iget-object v3, v1, Lc/e/a/b/g/f/Y;->d:Ljava/lang/String;

    const-string v4, "expression"

    invoke-static {p1, v0, v4, v3}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 131
    iget-object v3, v1, Lc/e/a/b/g/f/Y;->e:Ljava/lang/Boolean;

    const-string v4, "case_sensitive"

    invoke-static {p1, v0, v4, v3}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 132
    iget-object v3, v1, Lc/e/a/b/g/f/Y;->f:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_3

    add-int/lit8 v3, v0, 0x1

    .line 133
    invoke-static {p1, v3}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, "expression_list {\n"

    .line 134
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v1, v1, Lc/e/a/b/g/f/Y;->f:[Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    add-int/lit8 v6, v0, 0x2

    .line 136
    invoke-static {p1, v6}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;I)V

    .line 137
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    .line 138
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_3
    invoke-static {p1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;I)V

    .line 141
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_4
    iget-object p3, p3, Lc/e/a/b/g/f/U;->e:Lc/e/a/b/g/f/W;

    const-string v1, "number_filter"

    invoke-virtual {p0, p1, v0, v1, p3}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Lc/e/a/b/g/f/W;)V

    .line 143
    invoke-static {p1, p2}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;I)V

    .line 144
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;ILjava/lang/String;Lc/e/a/b/g/f/L;Ljava/lang/String;)V
    .locals 8

    if-nez p4, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x3

    .line 69
    invoke-static {p1, p2}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;I)V

    .line 70
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " {\n"

    .line 71
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p4}, Lc/e/a/b/g/f/L;->t()I

    move-result p3

    const/16 v0, 0xa

    const/4 v1, 0x4

    const-string v2, ", "

    const/4 v3, 0x0

    if-eqz p3, :cond_3

    .line 73
    invoke-static {p1, v1}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;I)V

    const-string p3, "results: "

    .line 74
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p4}, Lc/e/a/b/g/f/L;->s()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    add-int/lit8 v6, v4, 0x1

    if-eqz v4, :cond_1

    .line 76
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v4, v6

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    :cond_3
    invoke-virtual {p4}, Lc/e/a/b/g/f/L;->r()I

    move-result p3

    if-eqz p3, :cond_6

    .line 80
    invoke-static {p1, v1}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;I)V

    const-string p3, "status: "

    .line 81
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p4}, Lc/e/a/b/g/f/L;->q()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v4, 0x0

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    add-int/lit8 v6, v4, 0x1

    if-eqz v4, :cond_4

    .line 83
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_4
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v4, v6

    goto :goto_1

    .line 85
    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    :cond_6
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->i()Lc/e/a/b/h/b/pc;

    move-result-object p3

    invoke-virtual {p3, p5}, Lc/e/a/b/h/b/pc;->o(Ljava/lang/String;)Z

    move-result p3

    const-string p5, "}\n"

    if-eqz p3, :cond_11

    .line 87
    invoke-virtual {p4}, Lc/e/a/b/g/f/L;->v()I

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_b

    .line 88
    invoke-static {p1, v1}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;I)V

    const-string p3, "dynamic_filter_timestamps: {"

    .line 89
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p4}, Lc/e/a/b/g/f/L;->u()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v4, 0x0

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/e/a/b/g/f/I;

    add-int/lit8 v6, v4, 0x1

    if-eqz v4, :cond_7

    .line 91
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_7
    invoke-virtual {v5}, Lc/e/a/b/g/f/I;->r()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v5}, Lc/e/a/b/g/f/I;->q()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_3

    :cond_8
    move-object v4, v0

    :goto_3
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    .line 93
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v5}, Lc/e/a/b/g/f/I;->s()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v5}, Lc/e/a/b/g/f/I;->t()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_4

    :cond_9
    move-object v4, v0

    :goto_4
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v4, v6

    goto :goto_2

    .line 95
    :cond_a
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_b
    invoke-virtual {p4}, Lc/e/a/b/g/f/L;->x()I

    move-result p3

    if-eqz p3, :cond_11

    .line 97
    invoke-static {p1, v1}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;I)V

    const-string p3, "sequence_filter_timestamps: {"

    .line 98
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p4}, Lc/e/a/b/g/f/L;->w()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 p4, 0x0

    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/b/g/f/M;

    add-int/lit8 v4, p4, 0x1

    if-eqz p4, :cond_c

    .line 100
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_c
    invoke-virtual {v1}, Lc/e/a/b/g/f/M;->r()Z

    move-result p4

    if-eqz p4, :cond_d

    invoke-virtual {v1}, Lc/e/a/b/g/f/M;->q()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    goto :goto_6

    :cond_d
    move-object p4, v0

    :goto_6
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ": ["

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v1}, Lc/e/a/b/g/f/M;->s()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const/4 v1, 0x0

    :goto_7
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-int/lit8 v7, v1, 0x1

    if-eqz v1, :cond_e

    .line 103
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_e
    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v7

    goto :goto_7

    :cond_f
    const-string p4, "]"

    .line 105
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p4, v4

    goto :goto_5

    .line 106
    :cond_10
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_11
    invoke-static {p1, p2}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;I)V

    .line 108
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;ILjava/lang/String;Lc/e/a/b/g/f/W;)V
    .locals 1

    if-nez p4, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-static {p1, p2}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;I)V

    .line 110
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " {\n"

    .line 111
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object p3, p4, Lc/e/a/b/g/f/W;->c:Lcom/google/android/gms/internal/measurement/zzbl$zza$zzb;

    if-eqz p3, :cond_1

    .line 113
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    const-string v0, "comparison_type"

    invoke-static {p1, p2, v0, p3}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 114
    :cond_1
    iget-object p3, p4, Lc/e/a/b/g/f/W;->d:Ljava/lang/Boolean;

    const-string v0, "match_as_float"

    invoke-static {p1, p2, v0, p3}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 115
    iget-object p3, p4, Lc/e/a/b/g/f/W;->e:Ljava/lang/String;

    const-string v0, "comparison_value"

    invoke-static {p1, p2, v0, p3}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 116
    iget-object p3, p4, Lc/e/a/b/g/f/W;->f:Ljava/lang/String;

    const-string v0, "min_comparison_value"

    invoke-static {p1, p2, v0, p3}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 117
    iget-object p3, p4, Lc/e/a/b/g/f/W;->g:Ljava/lang/String;

    const-string p4, "max_comparison_value"

    invoke-static {p1, p2, p4, p3}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 118
    invoke-static {p1, p2}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;I)V

    const-string p2, "}\n"

    .line 119
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(JJ)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    cmp-long v2, p3, v0

    if-lez v2, :cond_1

    .line 173
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->c()Lc/e/a/b/d/g/e;

    move-result-object v0

    invoke-interface {v0}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/measurement/internal/zzm;)Z
    .locals 0

    .line 159
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {p2}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/zzm;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/zzm;->r:Ljava/lang/String;

    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->a()Lc/e/a/b/h/b/nc;

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lc/e/a/b/g/f/ca;)[B
    .locals 3

    .line 19
    :try_start_0
    invoke-virtual {p1}, Lc/e/a/b/g/f/Wc;->b()I

    move-result v0

    .line 20
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 21
    array-length v2, v0

    invoke-static {v0, v1, v2}, Lc/e/a/b/g/f/Qc;->a([BII)Lc/e/a/b/g/f/Qc;

    move-result-object v1

    .line 22
    invoke-virtual {p1, v1}, Lc/e/a/b/g/f/ca;->a(Lc/e/a/b/g/f/Qc;)V

    .line 23
    invoke-virtual {v1}, Lc/e/a/b/g/f/Qc;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "Data loss. Failed to serialize batch"

    invoke-virtual {v0, v1, p1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Lc/e/a/b/g/f/ca;)Ljava/lang/String;
    .locals 25

    .line 8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\nbatch {\n"

    .line 9
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    .line 10
    iget-object v7, v0, Lc/e/a/b/g/f/ca;->c:[Lc/e/a/b/g/f/da;

    const-string v8, "}\n"

    if-eqz v7, :cond_12

    .line 11
    array-length v9, v7

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_12

    aget-object v12, v7, v11

    if-eqz v12, :cond_11

    if-eqz v12, :cond_11

    const/4 v13, 0x1

    .line 12
    invoke-static {v6, v13}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;I)V

    const-string v0, "bundle {\n"

    .line 13
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object v0, v12, Lc/e/a/b/g/f/da;->d:Ljava/lang/Integer;

    const-string v1, "protocol_version"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 15
    iget-object v0, v12, Lc/e/a/b/g/f/da;->l:Ljava/lang/String;

    const-string v1, "platform"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 16
    iget-object v0, v12, Lc/e/a/b/g/f/da;->t:Ljava/lang/Long;

    const-string v1, "gmp_version"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 17
    iget-object v0, v12, Lc/e/a/b/g/f/da;->u:Ljava/lang/Long;

    const-string v1, "uploading_gmp_version"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 18
    iget-object v0, v12, Lc/e/a/b/g/f/da;->R:Ljava/lang/Long;

    const-string v1, "dynamite_version"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 19
    iget-object v0, v12, Lc/e/a/b/g/f/da;->J:Ljava/lang/Long;

    const-string v1, "config_version"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 20
    iget-object v0, v12, Lc/e/a/b/g/f/da;->B:Ljava/lang/String;

    const-string v1, "gmp_app_id"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 21
    iget-object v0, v12, Lc/e/a/b/g/f/da;->O:Ljava/lang/String;

    const-string v1, "admob_app_id"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 22
    iget-object v0, v12, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    const-string v1, "app_id"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 23
    iget-object v0, v12, Lc/e/a/b/g/f/da;->s:Ljava/lang/String;

    const-string v1, "app_version"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 24
    iget-object v0, v12, Lc/e/a/b/g/f/da;->F:Ljava/lang/Integer;

    const-string v1, "app_version_major"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 25
    iget-object v0, v12, Lc/e/a/b/g/f/da;->E:Ljava/lang/String;

    const-string v1, "firebase_instance_id"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 26
    iget-object v0, v12, Lc/e/a/b/g/f/da;->y:Ljava/lang/Long;

    const-string v1, "dev_cert_hash"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 27
    iget-object v0, v12, Lc/e/a/b/g/f/da;->q:Ljava/lang/String;

    const-string v1, "app_store"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 28
    iget-object v0, v12, Lc/e/a/b/g/f/da;->g:Ljava/lang/Long;

    const-string v1, "upload_timestamp_millis"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 29
    iget-object v0, v12, Lc/e/a/b/g/f/da;->h:Ljava/lang/Long;

    const-string v1, "start_timestamp_millis"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 30
    iget-object v0, v12, Lc/e/a/b/g/f/da;->i:Ljava/lang/Long;

    const-string v1, "end_timestamp_millis"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 31
    iget-object v0, v12, Lc/e/a/b/g/f/da;->j:Ljava/lang/Long;

    const-string v1, "previous_bundle_start_timestamp_millis"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 32
    iget-object v0, v12, Lc/e/a/b/g/f/da;->k:Ljava/lang/Long;

    const-string v1, "previous_bundle_end_timestamp_millis"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 33
    iget-object v0, v12, Lc/e/a/b/g/f/da;->x:Ljava/lang/String;

    const-string v1, "app_instance_id"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 34
    iget-object v0, v12, Lc/e/a/b/g/f/da;->v:Ljava/lang/String;

    const-string v1, "resettable_device_id"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 35
    iget-object v0, v12, Lc/e/a/b/g/f/da;->I:Ljava/lang/String;

    const-string v1, "device_id"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 36
    iget-object v0, v12, Lc/e/a/b/g/f/da;->L:Ljava/lang/String;

    const-string v1, "ds_id"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 37
    iget-object v0, v12, Lc/e/a/b/g/f/da;->w:Ljava/lang/Boolean;

    const-string v1, "limited_ad_tracking"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 38
    iget-object v0, v12, Lc/e/a/b/g/f/da;->m:Ljava/lang/String;

    const-string v1, "os_version"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 39
    iget-object v0, v12, Lc/e/a/b/g/f/da;->n:Ljava/lang/String;

    const-string v1, "device_model"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 40
    iget-object v0, v12, Lc/e/a/b/g/f/da;->o:Ljava/lang/String;

    const-string v1, "user_default_language"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 41
    iget-object v0, v12, Lc/e/a/b/g/f/da;->p:Ljava/lang/Integer;

    const-string v1, "time_zone_offset_minutes"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 42
    iget-object v0, v12, Lc/e/a/b/g/f/da;->z:Ljava/lang/Integer;

    const-string v1, "bundle_sequential_index"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 43
    iget-object v0, v12, Lc/e/a/b/g/f/da;->C:Ljava/lang/Boolean;

    const-string v1, "service_upload"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 44
    iget-object v0, v12, Lc/e/a/b/g/f/da;->A:Ljava/lang/String;

    const-string v1, "health_monitor"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 45
    iget-object v0, v12, Lc/e/a/b/g/f/da;->K:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 46
    iget-object v0, v12, Lc/e/a/b/g/f/da;->K:Ljava/lang/Long;

    const-string v1, "android_id"

    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 47
    :cond_0
    iget-object v0, v12, Lc/e/a/b/g/f/da;->N:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const-string v1, "retry_counter"

    .line 48
    invoke-static {v6, v13, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 49
    :cond_1
    iget-object v0, v12, Lc/e/a/b/g/f/da;->f:[Lc/e/a/b/g/f/N;

    const-string v14, "double_value"

    const-string v15, "int_value"

    const-string v5, "string_value"

    const-string v4, "name"

    const/16 v16, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_6

    .line 50
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_6

    aget-object v17, v0, v2

    if-eqz v17, :cond_5

    .line 51
    invoke-static {v6, v3}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;I)V

    const-string v10, "user_property {\n"

    .line 52
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual/range {v17 .. v17}, Lc/e/a/b/g/f/N;->B()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual/range {v17 .. v17}, Lc/e/a/b/g/f/N;->C()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_2

    :cond_2
    move-object/from16 v10, v16

    :goto_2
    const-string v13, "set_timestamp_millis"

    .line 54
    invoke-static {v6, v3, v13, v10}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 55
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object v10

    invoke-virtual/range {v17 .. v17}, Lc/e/a/b/g/f/N;->q()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lc/e/a/b/h/b/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 56
    invoke-static {v6, v3, v4, v10}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 57
    invoke-virtual/range {v17 .. v17}, Lc/e/a/b/g/f/N;->t()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v3, v5, v10}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 58
    invoke-virtual/range {v17 .. v17}, Lc/e/a/b/g/f/N;->v()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual/range {v17 .. v17}, Lc/e/a/b/g/f/N;->w()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_3

    :cond_3
    move-object/from16 v10, v16

    :goto_3
    invoke-static {v6, v3, v15, v10}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 59
    invoke-virtual/range {v17 .. v17}, Lc/e/a/b/g/f/N;->y()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual/range {v17 .. v17}, Lc/e/a/b/g/f/N;->z()D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    goto :goto_4

    :cond_4
    move-object/from16 v10, v16

    .line 60
    :goto_4
    invoke-static {v6, v3, v14, v10}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 61
    invoke-static {v6, v3}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;I)V

    .line 62
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v2, v2, 0x1

    const/4 v13, 0x1

    goto :goto_1

    .line 63
    :cond_6
    iget-object v10, v12, Lc/e/a/b/g/f/da;->D:[Lc/e/a/b/g/f/H;

    iget-object v13, v12, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    if-eqz v10, :cond_a

    .line 64
    array-length v2, v10

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_a

    aget-object v17, v10, v1

    if-eqz v17, :cond_9

    .line 65
    invoke-static {v6, v3}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;I)V

    const-string v0, "audience_membership {\n"

    .line 66
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual/range {v17 .. v17}, Lc/e/a/b/g/f/H;->r()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 68
    invoke-virtual/range {v17 .. v17}, Lc/e/a/b/g/f/H;->s()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move/from16 v19, v1

    const-string v1, "audience_id"

    invoke-static {v6, v3, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :cond_7
    move/from16 v19, v1

    .line 69
    :goto_6
    invoke-virtual/range {v17 .. v17}, Lc/e/a/b/g/f/H;->w()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 70
    invoke-virtual/range {v17 .. v17}, Lc/e/a/b/g/f/H;->x()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "new_audience"

    invoke-static {v6, v3, v1, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_8
    const/16 v20, 0x2

    .line 71
    invoke-virtual/range {v17 .. v17}, Lc/e/a/b/g/f/H;->t()Lc/e/a/b/g/f/L;

    move-result-object v21

    const-string v22, "current_data"

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v23, v2

    move/from16 v2, v20

    move-object/from16 v3, v22

    move-object/from16 v24, v4

    move-object/from16 v4, v21

    move-object/from16 v20, v7

    move-object v7, v5

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Lc/e/a/b/g/f/L;Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 72
    invoke-virtual/range {v17 .. v17}, Lc/e/a/b/g/f/H;->v()Lc/e/a/b/g/f/L;

    move-result-object v4

    const-string v3, "previous_data"

    invoke-virtual/range {v0 .. v5}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Lc/e/a/b/g/f/L;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 73
    invoke-static {v6, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;I)V

    .line 74
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_9
    move/from16 v19, v1

    move/from16 v23, v2

    move-object/from16 v24, v4

    move-object/from16 v20, v7

    const/4 v0, 0x2

    move-object v7, v5

    :goto_7
    add-int/lit8 v1, v19, 0x1

    move-object v5, v7

    move-object/from16 v7, v20

    move/from16 v2, v23

    move-object/from16 v4, v24

    const/4 v3, 0x2

    goto :goto_5

    :cond_a
    move-object/from16 v24, v4

    move-object/from16 v20, v7

    const/4 v0, 0x2

    move-object v7, v5

    .line 75
    iget-object v1, v12, Lc/e/a/b/g/f/da;->e:[Lc/e/a/b/g/f/ba;

    if-eqz v1, :cond_10

    .line 76
    array-length v2, v1

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_10

    aget-object v4, v1, v3

    if-eqz v4, :cond_f

    .line 77
    invoke-static {v6, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;I)V

    const-string v5, "event {\n"

    .line 78
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object v5

    iget-object v10, v4, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    invoke-virtual {v5, v10}, Lc/e/a/b/h/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v10, v24

    invoke-static {v6, v0, v10, v5}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 80
    iget-object v5, v4, Lc/e/a/b/g/f/ba;->f:Ljava/lang/Long;

    const-string v12, "timestamp_millis"

    invoke-static {v6, v0, v12, v5}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 81
    iget-object v5, v4, Lc/e/a/b/g/f/ba;->g:Ljava/lang/Long;

    const-string v12, "previous_timestamp_millis"

    invoke-static {v6, v0, v12, v5}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 82
    iget-object v5, v4, Lc/e/a/b/g/f/ba;->h:Ljava/lang/Integer;

    const-string v12, "count"

    invoke-static {v6, v0, v12, v5}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 83
    iget-object v4, v4, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    if-eqz v4, :cond_e

    .line 84
    array-length v5, v4

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v5, :cond_e

    aget-object v13, v4, v12

    if-eqz v13, :cond_d

    const/4 v0, 0x3

    .line 85
    invoke-static {v6, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;I)V

    const-string v0, "param {\n"

    .line 86
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object v0

    move-object/from16 v19, v1

    invoke-virtual {v13}, Lc/e/a/b/g/f/K;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v6, v1, v10, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 88
    invoke-virtual {v13}, Lc/e/a/b/g/f/K;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v1, v7, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 89
    invoke-virtual {v13}, Lc/e/a/b/g/f/K;->v()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v13}, Lc/e/a/b/g/f/K;->w()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_a

    :cond_b
    move-object/from16 v0, v16

    :goto_a
    invoke-static {v6, v1, v15, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 90
    invoke-virtual {v13}, Lc/e/a/b/g/f/K;->y()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v13}, Lc/e/a/b/g/f/K;->z()D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_b

    :cond_c
    move-object/from16 v0, v16

    .line 91
    :goto_b
    invoke-static {v6, v1, v14, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 92
    invoke-static {v6, v1}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;I)V

    .line 93
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_d
    move-object/from16 v19, v1

    :goto_c
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v19

    const/4 v0, 0x2

    goto :goto_9

    :cond_e
    move-object/from16 v19, v1

    .line 94
    invoke-static {v6, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;I)V

    .line 95
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_f
    move-object/from16 v19, v1

    move-object/from16 v10, v24

    :goto_d
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v24, v10

    move-object/from16 v1, v19

    goto/16 :goto_8

    :cond_10
    const/4 v0, 0x1

    .line 96
    invoke-static {v6, v0}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/StringBuilder;I)V

    .line 97
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_11
    move-object/from16 v20, v7

    :goto_e
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v7, v20

    goto/16 :goto_0

    .line 98
    :cond_12
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b([B)[B
    .locals 5

    .line 100
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 101
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 102
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    .line 103
    new-array v2, v2, [B

    .line 104
    :goto_0
    invoke-virtual {p1, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 105
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 107
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 108
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 109
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "Failed to ungzip content"

    invoke-virtual {v0, v1, p1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final c([B)[B
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3
    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 4
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "Failed to gzip content"

    invoke-virtual {v0, v1, p1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    throw p1
.end method

.method public final u()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final v()[I
    .locals 7

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Rb;->b:Lc/e/a/b/h/b/Tb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/b/h/b/k;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    sget-object v3, Lc/e/a/b/h/b/k;->aa:Lc/e/a/b/h/b/k$a;

    .line 5
    invoke-virtual {v3, v1}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 6
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "measurement.id."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9
    :try_start_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v3, :cond_1

    .line 12
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v4

    .line 13
    invoke-virtual {v4}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v4

    const-string v5, "Too many experiment IDs. Number of IDs"

    .line 14
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 15
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v5

    invoke-virtual {v5}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v5

    const-string v6, "Experiment ID NumberFormatException"

    invoke-virtual {v5, v6, v4}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 16
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    .line 17
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    if-ge v3, v1, :cond_4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Ljava/lang/Integer;

    add-int/lit8 v6, v4, 0x1

    .line 19
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v4

    move v4, v6

    goto :goto_2

    :cond_4
    return-object v0

    :cond_5
    :goto_3
    return-object v1
.end method
