.class public final Lcab/snapp/snappdialog/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    .line 16
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v1

    const/4 v1, 0x5

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 15
    invoke-virtual {p0, v2, v3, v0}, Lcab/snapp/snappdialog/d/a;->setGregorianDate(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcab/snapp/snappdialog/d/a;->setGregorianDate(III)V

    return-void
.end method

.method private static a(III)I
    .locals 3

    add-int/lit8 v0, p1, -0x8

    .line 434
    div-int/lit8 v0, v0, 0x6

    add-int v1, p0, v0

    const v2, 0x18704

    add-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x5b5

    div-int/lit8 v1, v1, 0x4

    add-int/lit8 p1, p1, 0x9

    rem-int/lit8 p1, p1, 0xc

    mul-int/lit16 p1, p1, 0x99

    add-int/lit8 p1, p1, 0x2

    div-int/lit8 p1, p1, 0x5

    add-int/2addr v1, p1

    add-int/2addr v1, p2

    const p1, 0x2139f58

    sub-int/2addr v1, p1

    add-int/2addr p0, v2

    add-int/2addr p0, v0

    .line 436
    div-int/lit8 p0, p0, 0x64

    mul-int/lit8 p0, p0, 0x3

    div-int/lit8 p0, p0, 0x4

    sub-int/2addr v1, p0

    add-int/lit16 v1, v1, 0x2f0

    return v1
.end method

.method private a()V
    .locals 10

    const/16 v0, 0x14

    new-array v1, v0, [I

    .line 300
    fill-array-data v1, :array_0

    .line 303
    iget v2, p0, Lcab/snapp/snappdialog/d/a;->a:I

    add-int/lit16 v2, v2, 0x26d

    iput v2, p0, Lcab/snapp/snappdialog/d/a;->d:I

    const/4 v2, 0x0

    .line 305
    aget v2, v1, v2

    const/4 v3, 0x1

    const/16 v4, -0xe

    move v4, v2

    const/4 v2, 0x1

    const/16 v5, -0xe

    .line 309
    :cond_0
    aget v6, v1, v2

    sub-int v7, v6, v4

    .line 311
    iget v8, p0, Lcab/snapp/snappdialog/d/a;->a:I

    const/4 v9, 0x4

    if-lt v8, v6, :cond_1

    .line 312
    div-int/lit8 v4, v7, 0x21

    mul-int/lit8 v4, v4, 0x8

    rem-int/lit8 v8, v7, 0x21

    div-int/2addr v8, v9

    add-int/2addr v4, v8

    add-int/2addr v5, v4

    move v4, v6

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_2

    .line 316
    iget v8, p0, Lcab/snapp/snappdialog/d/a;->a:I

    if-ge v8, v6, :cond_0

    .line 317
    :cond_2
    iget v1, p0, Lcab/snapp/snappdialog/d/a;->a:I

    sub-int/2addr v1, v4

    .line 321
    div-int/lit8 v2, v1, 0x21

    mul-int/lit8 v2, v2, 0x8

    rem-int/lit8 v4, v1, 0x21

    add-int/lit8 v4, v4, 0x3

    div-int/2addr v4, v9

    add-int/2addr v2, v4

    add-int/2addr v5, v2

    .line 322
    rem-int/lit8 v2, v7, 0x21

    if-ne v2, v9, :cond_3

    sub-int v2, v7, v1

    if-ne v2, v9, :cond_3

    add-int/lit8 v5, v5, 0x1

    .line 325
    :cond_3
    iget v2, p0, Lcab/snapp/snappdialog/d/a;->d:I

    div-int/lit8 v4, v2, 0x4

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/2addr v2, v9

    sub-int/2addr v4, v2

    add-int/lit16 v4, v4, -0x96

    add-int/2addr v5, v0

    sub-int/2addr v5, v4

    .line 326
    iput v5, p0, Lcab/snapp/snappdialog/d/a;->l:I

    sub-int v0, v7, v1

    const/4 v2, 0x6

    if-ge v0, v2, :cond_4

    sub-int/2addr v1, v7

    add-int/2addr v7, v9

    .line 329
    div-int/lit8 v7, v7, 0x21

    mul-int/lit8 v7, v7, 0x21

    add-int/2addr v1, v7

    :cond_4
    add-int/2addr v1, v3

    .line 330
    rem-int/lit8 v1, v1, 0x21

    sub-int/2addr v1, v3

    rem-int/2addr v1, v9

    iput v1, p0, Lcab/snapp/snappdialog/d/a;->j:I

    .line 331
    iget v0, p0, Lcab/snapp/snappdialog/d/a;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 332
    iput v9, p0, Lcab/snapp/snappdialog/d/a;->j:I

    :cond_5
    return-void

    :array_0
    .array-data 4
        -0x3d
        0x9
        0x26
        0xc7
        0x1aa
        0x2ae
        0x2f4
        0x332
        0x457
        0x49d
        0x4ba
        0x663
        0x80c
        0x831
        0x890
        0x8d6
        0x914
        0x95a
        0x998
        0xc6a
    .end array-data
.end method

.method private b()V
    .locals 3

    .line 357
    invoke-direct {p0}, Lcab/snapp/snappdialog/d/a;->d()V

    .line 358
    iget v0, p0, Lcab/snapp/snappdialog/d/a;->d:I

    add-int/lit16 v0, v0, -0x26d

    iput v0, p0, Lcab/snapp/snappdialog/d/a;->a:I

    .line 359
    invoke-direct {p0}, Lcab/snapp/snappdialog/d/a;->a()V

    .line 360
    iget v0, p0, Lcab/snapp/snappdialog/d/a;->d:I

    iget v1, p0, Lcab/snapp/snappdialog/d/a;->l:I

    const/4 v2, 0x3

    invoke-static {v0, v2, v1}, Lcab/snapp/snappdialog/d/a;->a(III)I

    move-result v0

    .line 361
    iget v1, p0, Lcab/snapp/snappdialog/d/a;->k:I

    sub-int/2addr v1, v0

    const/4 v0, 0x1

    if-ltz v1, :cond_1

    const/16 v2, 0xb9

    if-gt v1, v2, :cond_0

    .line 364
    div-int/lit8 v2, v1, 0x1f

    add-int/2addr v2, v0

    iput v2, p0, Lcab/snapp/snappdialog/d/a;->b:I

    .line 365
    rem-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    iput v1, p0, Lcab/snapp/snappdialog/d/a;->c:I

    return-void

    :cond_0
    add-int/lit16 v1, v1, -0xba

    goto :goto_0

    .line 370
    :cond_1
    iget v2, p0, Lcab/snapp/snappdialog/d/a;->a:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcab/snapp/snappdialog/d/a;->a:I

    add-int/lit16 v1, v1, 0xb3

    .line 372
    iget v2, p0, Lcab/snapp/snappdialog/d/a;->j:I

    if-ne v2, v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 375
    :cond_2
    :goto_0
    div-int/lit8 v2, v1, 0x1e

    add-int/lit8 v2, v2, 0x7

    iput v2, p0, Lcab/snapp/snappdialog/d/a;->b:I

    .line 376
    rem-int/lit8 v1, v1, 0x1e

    add-int/2addr v1, v0

    iput v1, p0, Lcab/snapp/snappdialog/d/a;->c:I

    return-void
.end method

.method private c()V
    .locals 3

    .line 409
    iget v0, p0, Lcab/snapp/snappdialog/d/a;->k:I

    mul-int/lit8 v0, v0, 0x4

    const v1, 0x84e7d5f

    add-int/2addr v0, v1

    .line 410
    rem-int/lit16 v1, v0, 0x5b5

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x5

    add-int/lit16 v1, v1, 0x134

    .line 411
    rem-int/lit16 v2, v1, 0x99

    div-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcab/snapp/snappdialog/d/a;->i:I

    .line 412
    div-int/lit16 v1, v1, 0x99

    rem-int/lit8 v1, v1, 0xc

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcab/snapp/snappdialog/d/a;->h:I

    .line 413
    div-int/lit16 v0, v0, 0x5b5

    const v1, 0x18704

    sub-int/2addr v0, v1

    iget v1, p0, Lcab/snapp/snappdialog/d/a;->h:I

    rsub-int/lit8 v1, v1, 0x8

    div-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iput v0, p0, Lcab/snapp/snappdialog/d/a;->g:I

    return-void
.end method

.method private d()V
    .locals 3

    .line 448
    iget v0, p0, Lcab/snapp/snappdialog/d/a;->k:I

    mul-int/lit8 v1, v0, 0x4

    const v2, 0x84e7d5f

    add-int/2addr v1, v2

    mul-int/lit8 v0, v0, 0x4

    const v2, 0xaeb3908

    add-int/2addr v0, v2

    const v2, 0x23ab1

    .line 449
    div-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x4

    add-int/lit16 v0, v0, -0xf44

    add-int/2addr v1, v0

    .line 450
    rem-int/lit16 v0, v1, 0x5b5

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x5

    add-int/lit16 v0, v0, 0x134

    .line 451
    rem-int/lit16 v2, v0, 0x99

    div-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcab/snapp/snappdialog/d/a;->f:I

    .line 452
    div-int/lit16 v0, v0, 0x99

    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcab/snapp/snappdialog/d/a;->e:I

    .line 453
    div-int/lit16 v1, v1, 0x5b5

    const v0, 0x18704

    sub-int/2addr v1, v0

    iget v0, p0, Lcab/snapp/snappdialog/d/a;->e:I

    rsub-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x6

    add-int/2addr v1, v0

    iput v1, p0, Lcab/snapp/snappdialog/d/a;->d:I

    return-void
.end method


# virtual methods
.method public final getDayOfWeek()I
    .locals 1

    .line 173
    iget v0, p0, Lcab/snapp/snappdialog/d/a;->k:I

    rem-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public final getGregorianDate()Ljava/lang/String;
    .locals 3

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcab/snapp/snappdialog/d/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcab/snapp/snappdialog/d/a;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcab/snapp/snappdialog/d/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGregorianDay()I
    .locals 1

    .line 87
    iget v0, p0, Lcab/snapp/snappdialog/d/a;->f:I

    return v0
.end method

.method public final getGregorianMonth()I
    .locals 1

    .line 78
    iget v0, p0, Lcab/snapp/snappdialog/d/a;->e:I

    return v0
.end method

.method public final getGregorianYear()I
    .locals 1

    .line 69
    iget v0, p0, Lcab/snapp/snappdialog/d/a;->d:I

    return v0
.end method

.method public final getIranianDate()Ljava/lang/String;
    .locals 3

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcab/snapp/snappdialog/d/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcab/snapp/snappdialog/d/a;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcab/snapp/snappdialog/d/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIranianDay()I
    .locals 1

    .line 60
    iget v0, p0, Lcab/snapp/snappdialog/d/a;->c:I

    return v0
.end method

.method public final getIranianMonth()I
    .locals 1

    .line 51
    iget v0, p0, Lcab/snapp/snappdialog/d/a;->b:I

    return v0
.end method

.method public final getIranianYear()I
    .locals 1

    .line 42
    iget v0, p0, Lcab/snapp/snappdialog/d/a;->a:I

    return v0
.end method

.method public final getJulianDate()Ljava/lang/String;
    .locals 3

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcab/snapp/snappdialog/d/a;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcab/snapp/snappdialog/d/a;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcab/snapp/snappdialog/d/a;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getJulianDay()I
    .locals 1

    .line 114
    iget v0, p0, Lcab/snapp/snappdialog/d/a;->i:I

    return v0
.end method

.method public final getJulianMonth()I
    .locals 1

    .line 105
    iget v0, p0, Lcab/snapp/snappdialog/d/a;->h:I

    return v0
.end method

.method public final getJulianYear()I
    .locals 1

    .line 96
    iget v0, p0, Lcab/snapp/snappdialog/d/a;->g:I

    return v0
.end method

.method public final getWeekDayStr()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Monday"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Tuesday"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Wednesday"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Thursday"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Friday"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Saturday"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Sunday"

    aput-object v2, v0, v1

    .line 152
    invoke-virtual {p0}, Lcab/snapp/snappdialog/d/a;->getDayOfWeek()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final nextDay()V
    .locals 1

    .line 180
    iget v0, p0, Lcab/snapp/snappdialog/d/a;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcab/snapp/snappdialog/d/a;->k:I

    .line 181
    invoke-direct {p0}, Lcab/snapp/snappdialog/d/a;->b()V

    .line 182
    invoke-direct {p0}, Lcab/snapp/snappdialog/d/a;->c()V

    .line 183
    invoke-direct {p0}, Lcab/snapp/snappdialog/d/a;->d()V

    return-void
.end method

.method public final nextDay(I)V
    .locals 1

    .line 194
    iget v0, p0, Lcab/snapp/snappdialog/d/a;->k:I

    add-int/2addr v0, p1

    iput v0, p0, Lcab/snapp/snappdialog/d/a;->k:I

    .line 195
    invoke-direct {p0}, Lcab/snapp/snappdialog/d/a;->b()V

    .line 196
    invoke-direct {p0}, Lcab/snapp/snappdialog/d/a;->c()V

    .line 197
    invoke-direct {p0}, Lcab/snapp/snappdialog/d/a;->d()V

    return-void
.end method

.method public final previousDay()V
    .locals 1

    .line 205
    iget v0, p0, Lcab/snapp/snappdialog/d/a;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcab/snapp/snappdialog/d/a;->k:I

    .line 206
    invoke-direct {p0}, Lcab/snapp/snappdialog/d/a;->b()V

    .line 207
    invoke-direct {p0}, Lcab/snapp/snappdialog/d/a;->c()V

    .line 208
    invoke-direct {p0}, Lcab/snapp/snappdialog/d/a;->d()V

    return-void
.end method

.method public final previousDay(I)V
    .locals 1

    .line 219
    iget v0, p0, Lcab/snapp/snappdialog/d/a;->k:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcab/snapp/snappdialog/d/a;->k:I

    .line 220
    invoke-direct {p0}, Lcab/snapp/snappdialog/d/a;->b()V

    .line 221
    invoke-direct {p0}, Lcab/snapp/snappdialog/d/a;->c()V

    .line 222
    invoke-direct {p0}, Lcab/snapp/snappdialog/d/a;->d()V

    return-void
.end method

.method public final setGregorianDate(III)V
    .locals 0

    .line 258
    iput p1, p0, Lcab/snapp/snappdialog/d/a;->d:I

    .line 259
    iput p2, p0, Lcab/snapp/snappdialog/d/a;->e:I

    .line 260
    iput p3, p0, Lcab/snapp/snappdialog/d/a;->f:I

    .line 261
    invoke-static {p1, p2, p3}, Lcab/snapp/snappdialog/d/a;->a(III)I

    move-result p1

    iput p1, p0, Lcab/snapp/snappdialog/d/a;->k:I

    .line 262
    invoke-direct {p0}, Lcab/snapp/snappdialog/d/a;->b()V

    .line 263
    invoke-direct {p0}, Lcab/snapp/snappdialog/d/a;->c()V

    .line 264
    invoke-direct {p0}, Lcab/snapp/snappdialog/d/a;->d()V

    return-void
.end method

.method public final setIranianDate(III)V
    .locals 0

    .line 237
    iput p1, p0, Lcab/snapp/snappdialog/d/a;->a:I

    .line 238
    iput p2, p0, Lcab/snapp/snappdialog/d/a;->b:I

    .line 239
    iput p3, p0, Lcab/snapp/snappdialog/d/a;->c:I

    .line 1345
    invoke-direct {p0}, Lcab/snapp/snappdialog/d/a;->a()V

    .line 1346
    iget p1, p0, Lcab/snapp/snappdialog/d/a;->d:I

    iget p2, p0, Lcab/snapp/snappdialog/d/a;->l:I

    const/4 p3, 0x3

    invoke-static {p1, p3, p2}, Lcab/snapp/snappdialog/d/a;->a(III)I

    move-result p1

    iget p2, p0, Lcab/snapp/snappdialog/d/a;->b:I

    add-int/lit8 p3, p2, -0x1

    mul-int/lit8 p3, p3, 0x1f

    add-int/2addr p1, p3

    div-int/lit8 p3, p2, 0x7

    add-int/lit8 p2, p2, -0x7

    mul-int p3, p3, p2

    sub-int/2addr p1, p3

    iget p2, p0, Lcab/snapp/snappdialog/d/a;->c:I

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    .line 240
    iput p1, p0, Lcab/snapp/snappdialog/d/a;->k:I

    .line 241
    invoke-direct {p0}, Lcab/snapp/snappdialog/d/a;->b()V

    .line 242
    invoke-direct {p0}, Lcab/snapp/snappdialog/d/a;->c()V

    .line 243
    invoke-direct {p0}, Lcab/snapp/snappdialog/d/a;->d()V

    return-void
.end method

.method public final setJulianDate(III)V
    .locals 1

    .line 279
    iput p1, p0, Lcab/snapp/snappdialog/d/a;->g:I

    .line 280
    iput p2, p0, Lcab/snapp/snappdialog/d/a;->h:I

    .line 281
    iput p3, p0, Lcab/snapp/snappdialog/d/a;->i:I

    add-int/lit8 v0, p2, -0x8

    .line 1397
    div-int/lit8 v0, v0, 0x6

    add-int/2addr p1, v0

    const v0, 0x18704

    add-int/2addr p1, v0

    mul-int/lit16 p1, p1, 0x5b5

    div-int/lit8 p1, p1, 0x4

    add-int/lit8 p2, p2, 0x9

    rem-int/lit8 p2, p2, 0xc

    mul-int/lit16 p2, p2, 0x99

    add-int/lit8 p2, p2, 0x2

    div-int/lit8 p2, p2, 0x5

    add-int/2addr p1, p2

    add-int/2addr p1, p3

    const p2, 0x2139f58

    sub-int/2addr p1, p2

    .line 282
    iput p1, p0, Lcab/snapp/snappdialog/d/a;->k:I

    .line 283
    invoke-direct {p0}, Lcab/snapp/snappdialog/d/a;->b()V

    .line 284
    invoke-direct {p0}, Lcab/snapp/snappdialog/d/a;->c()V

    .line 285
    invoke-direct {p0}, Lcab/snapp/snappdialog/d/a;->d()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcab/snapp/snappdialog/d/a;->getWeekDayStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Gregorian:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcab/snapp/snappdialog/d/a;->getGregorianDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], Julian:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p0}, Lcab/snapp/snappdialog/d/a;->getJulianDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], Iranian:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {p0}, Lcab/snapp/snappdialog/d/a;->getIranianDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
