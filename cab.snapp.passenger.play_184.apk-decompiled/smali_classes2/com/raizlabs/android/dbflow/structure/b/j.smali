.class public final Lcom/raizlabs/android/dbflow/structure/b/j;
.super Landroid/database/CursorWrapper;
.source "SourceFile"


# instance fields
.field private a:Landroid/database/Cursor;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 26
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    return-void
.end method

.method public static from(Landroid/database/Cursor;)Lcom/raizlabs/android/dbflow/structure/b/j;
    .locals 1

    .line 15
    instance-of v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;

    if-eqz v0, :cond_0

    .line 16
    check-cast p0, Lcom/raizlabs/android/dbflow/structure/b/j;

    return-object p0

    .line 18
    :cond_0
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/b/j;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/structure/b/j;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method


# virtual methods
.method public final getBlobOrDefault(I)[B
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getBlobOrDefault(I[B)[B
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object p2, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final getBlobOrDefault(Ljava/lang/String;)[B
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/b/j;->getBlobOrDefault(I)[B

    move-result-object p1

    return-object p1
.end method

.method public final getBlobOrDefault(Ljava/lang/String;[B)[B
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/b/j;->getBlobOrDefault(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final getBoolean(I)Z
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getBooleanOrDefault(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/b/j;->getBoolean(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getBooleanOrDefault(IZ)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/b/j;->getBoolean(I)Z

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public final getBooleanOrDefault(Ljava/lang/String;)Z
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/b/j;->getBooleanOrDefault(I)Z

    move-result p1

    return p1
.end method

.method public final getBooleanOrDefault(Ljava/lang/String;Z)Z
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/b/j;->getBooleanOrDefault(IZ)Z

    move-result p1

    return p1
.end method

.method public final getDoubleOrDefault(I)D
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getDoubleOrDefault(ID)D
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object p2, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p1

    return-wide p1

    :cond_0
    return-wide p2
.end method

.method public final getDoubleOrDefault(Ljava/lang/String;)D
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/b/j;->getDoubleOrDefault(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getDoubleOrDefault(Ljava/lang/String;D)D
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/structure/b/j;->getDoubleOrDefault(ID)D

    move-result-wide p1

    return-wide p1
.end method

.method public final getDoubleOrDefault(ILjava/lang/Double;)Ljava/lang/Double;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object p2, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final getDoubleOrDefault(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/b/j;->getDoubleOrDefault(ILjava/lang/Double;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public final getFloatOrDefault(I)F
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getFloatOrDefault(IF)F
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object p2, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public final getFloatOrDefault(Ljava/lang/String;)F
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/b/j;->getFloatOrDefault(I)F

    move-result p1

    return p1
.end method

.method public final getFloatOrDefault(Ljava/lang/String;F)F
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/b/j;->getFloatOrDefault(IF)F

    move-result p1

    return p1
.end method

.method public final getFloatOrDefault(ILjava/lang/Float;)Ljava/lang/Float;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object p2, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final getFloatOrDefault(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/b/j;->getFloatOrDefault(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final getIntOrDefault(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getIntOrDefault(II)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object p2, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public final getIntOrDefault(Ljava/lang/String;)I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/b/j;->getIntOrDefault(I)I

    move-result p1

    return p1
.end method

.method public final getIntOrDefault(Ljava/lang/String;I)I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/b/j;->getIntOrDefault(II)I

    move-result p1

    return p1
.end method

.method public final getIntOrDefault(ILjava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object p2, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final getIntOrDefault(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/b/j;->getIntOrDefault(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final getLongOrDefault(I)J
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getLongOrDefault(IJ)J
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object p2, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    return-wide p1

    :cond_0
    return-wide p2
.end method

.method public final getLongOrDefault(Ljava/lang/String;)J
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/b/j;->getLongOrDefault(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLongOrDefault(Ljava/lang/String;J)J
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/structure/b/j;->getLongOrDefault(IJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getLongOrDefault(ILjava/lang/Long;)Ljava/lang/Long;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object p2, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final getLongOrDefault(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/b/j;->getLongOrDefault(ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final getShortOrDefault(ILjava/lang/Short;)Ljava/lang/Short;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object p2, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final getShortOrDefault(Ljava/lang/String;Ljava/lang/Short;)Ljava/lang/Short;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/b/j;->getShortOrDefault(ILjava/lang/Short;)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public final getShortOrDefault(I)S
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getShortOrDefault(IS)S
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object p2, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public final getShortOrDefault(Ljava/lang/String;)S
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/b/j;->getShortOrDefault(I)S

    move-result p1

    return p1
.end method

.method public final getShortOrDefault(Ljava/lang/String;S)S
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/b/j;->getShortOrDefault(IS)S

    move-result p1

    return p1
.end method

.method public final getStringOrDefault(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getStringOrDefault(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object p2, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final getStringOrDefault(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/b/j;->getStringOrDefault(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getStringOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/b/j;->getStringOrDefault(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getWrappedCursor()Landroid/database/Cursor;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/j;->a:Landroid/database/Cursor;

    return-object v0
.end method
