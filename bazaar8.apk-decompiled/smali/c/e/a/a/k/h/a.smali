.class public final Lc/e/a/a/k/h/a;
.super Ljava/lang/Object;
.source "CssParser.java"


# static fields
.field public static final a:Ljava/util/regex/Pattern;


# instance fields
.field public final b:Lc/e/a/a/o/v;

.field public final c:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\[voice=\"([^\"]*)\"\\]"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc/e/a/a/k/h/a;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/e/a/a/o/v;

    invoke-direct {v0}, Lc/e/a/a/o/v;-><init>()V

    iput-object v0, p0, Lc/e/a/a/k/h/a;->b:Lc/e/a/a/o/v;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lc/e/a/a/k/h/a;->c:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static a(Lc/e/a/a/o/v;I)C
    .locals 0

    .line 28
    iget-object p0, p0, Lc/e/a/a/o/v;->a:[B

    aget-byte p0, p0, p1

    int-to-char p0, p0

    return p0
.end method

.method public static a(Lc/e/a/a/o/v;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 37
    invoke-virtual {p0}, Lc/e/a/a/o/v;->c()I

    move-result v1

    .line 38
    invoke-virtual {p0}, Lc/e/a/a/o/v;->d()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_5

    if-nez v0, :cond_5

    .line 39
    iget-object v3, p0, Lc/e/a/a/o/v;->a:[B

    aget-byte v3, v3, v1

    int-to-char v3, v3

    const/16 v4, 0x41

    if-lt v3, v4, :cond_0

    const/16 v4, 0x5a

    if-le v3, v4, :cond_4

    :cond_0
    const/16 v4, 0x61

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7a

    if-le v3, v4, :cond_4

    :cond_1
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-le v3, v4, :cond_4

    :cond_2
    const/16 v4, 0x23

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_4

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 40
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 41
    :cond_5
    invoke-virtual {p0}, Lc/e/a/a/o/v;->c()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lc/e/a/a/o/v;->f(I)V

    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lc/e/a/a/o/v;Lc/e/a/a/k/h/d;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    invoke-static {p0}, Lc/e/a/a/k/h/a;->f(Lc/e/a/a/o/v;)V

    .line 2
    invoke-static {p0, p2}, Lc/e/a/a/k/h/a;->a(Lc/e/a/a/o/v;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p0, p2}, Lc/e/a/a/k/h/a;->b(Lc/e/a/a/o/v;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {p0}, Lc/e/a/a/k/h/a;->f(Lc/e/a/a/o/v;)V

    .line 6
    invoke-static {p0, p2}, Lc/e/a/a/k/h/a;->c(Lc/e/a/a/o/v;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_1

    .line 8
    :cond_2
    invoke-virtual {p0}, Lc/e/a/a/o/v;->c()I

    move-result v1

    .line 9
    invoke-static {p0, p2}, Lc/e/a/a/k/h/a;->b(Lc/e/a/a/o/v;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    const-string v3, ";"

    .line 10
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const-string v3, "}"

    .line 11
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 12
    invoke-virtual {p0, v1}, Lc/e/a/a/o/v;->e(I)V

    :goto_0
    const-string p0, "color"

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 14
    invoke-static {v2}, Lc/e/a/a/o/h;->a(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lc/e/a/a/k/h/d;->b(I)Lc/e/a/a/k/h/d;

    goto :goto_1

    :cond_4
    const-string p0, "background-color"

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 16
    invoke-static {v2}, Lc/e/a/a/o/h;->a(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lc/e/a/a/k/h/d;->a(I)Lc/e/a/a/k/h/d;

    goto :goto_1

    :cond_5
    const-string p0, "text-decoration"

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p2, 0x1

    if-eqz p0, :cond_6

    const-string p0, "underline"

    .line 18
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 19
    invoke-virtual {p1, p2}, Lc/e/a/a/k/h/d;->c(Z)Lc/e/a/a/k/h/d;

    goto :goto_1

    :cond_6
    const-string p0, "font-family"

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 21
    invoke-virtual {p1, v2}, Lc/e/a/a/k/h/d;->a(Ljava/lang/String;)Lc/e/a/a/k/h/d;

    goto :goto_1

    :cond_7
    const-string p0, "font-weight"

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "bold"

    .line 23
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 24
    invoke-virtual {p1, p2}, Lc/e/a/a/k/h/d;->a(Z)Lc/e/a/a/k/h/d;

    goto :goto_1

    :cond_8
    const-string p0, "font-style"

    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "italic"

    .line 26
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 27
    invoke-virtual {p1, p2}, Lc/e/a/a/k/h/d;->b(Z)Lc/e/a/a/k/h/d;

    :cond_9
    :goto_1
    return-void
.end method

.method public static a(Lc/e/a/a/o/v;)Z
    .locals 6

    .line 29
    invoke-virtual {p0}, Lc/e/a/a/o/v;->c()I

    move-result v0

    .line 30
    invoke-virtual {p0}, Lc/e/a/a/o/v;->d()I

    move-result v1

    .line 31
    iget-object v2, p0, Lc/e/a/a/o/v;->a:[B

    add-int/lit8 v3, v0, 0x2

    if-gt v3, v1, :cond_2

    add-int/lit8 v3, v0, 0x1

    .line 32
    aget-byte v0, v2, v0

    const/16 v4, 0x2f

    if-ne v0, v4, :cond_2

    add-int/lit8 v0, v3, 0x1

    aget-byte v3, v2, v3

    const/16 v5, 0x2a

    if-ne v3, v5, :cond_2

    :goto_0
    add-int/lit8 v3, v0, 0x1

    if-ge v3, v1, :cond_1

    .line 33
    aget-byte v0, v2, v0

    int-to-char v0, v0

    if-ne v0, v5, :cond_0

    .line 34
    aget-byte v0, v2, v3

    int-to-char v0, v0

    if-ne v0, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move v1, v0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lc/e/a/a/o/v;->c()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lc/e/a/a/o/v;->f(I)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lc/e/a/a/o/v;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lc/e/a/a/k/h/a;->f(Lc/e/a/a/o/v;)V

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/o/v;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lc/e/a/a/k/h/a;->a(Lc/e/a/a/o/v;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/e/a/a/o/v;->u()I

    move-result p0

    int-to-char p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lc/e/a/a/o/v;)Z
    .locals 2

    .line 6
    invoke-virtual {p0}, Lc/e/a/a/o/v;->c()I

    move-result v0

    invoke-static {p0, v0}, Lc/e/a/a/k/h/a;->a(Lc/e/a/a/o/v;I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lc/e/a/a/o/v;->f(I)V

    return v0
.end method

.method public static c(Lc/e/a/a/o/v;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 17
    invoke-virtual {p0}, Lc/e/a/a/o/v;->c()I

    move-result v2

    .line 18
    invoke-static {p0, p1}, Lc/e/a/a/k/h/a;->b(Lc/e/a/a/o/v;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v4, "}"

    .line 19
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ";"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 21
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lc/e/a/a/o/v;->e(I)V

    const/4 v1, 0x1

    goto :goto_0

    .line 22
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lc/e/a/a/o/v;)Ljava/lang/String;
    .locals 5

    .line 13
    invoke-virtual {p0}, Lc/e/a/a/o/v;->c()I

    move-result v0

    .line 14
    invoke-virtual {p0}, Lc/e/a/a/o/v;->d()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    if-nez v3, :cond_1

    .line 15
    iget-object v3, p0, Lc/e/a/a/o/v;->a:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    int-to-char v0, v0

    const/16 v3, 0x29

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 16
    invoke-virtual {p0}, Lc/e/a/a/o/v;->c()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lc/e/a/a/o/v;->b(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lc/e/a/a/o/v;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lc/e/a/a/k/h/a;->f(Lc/e/a/a/o/v;)V

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/o/v;->a()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Lc/e/a/a/o/v;->b(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "::cue"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    .line 5
    :cond_1
    invoke-virtual {p0}, Lc/e/a/a/o/v;->c()I

    move-result v0

    .line 6
    invoke-static {p0, p1}, Lc/e/a/a/k/h/a;->b(Lc/e/a/a/o/v;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v2

    :cond_2
    const-string v3, "{"

    .line 7
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {p0, v0}, Lc/e/a/a/o/v;->e(I)V

    const-string p0, ""

    return-object p0

    :cond_3
    const-string v0, "("

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-static {p0}, Lc/e/a/a/k/h/a;->d(Lc/e/a/a/o/v;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v2

    .line 11
    :goto_0
    invoke-static {p0, p1}, Lc/e/a/a/k/h/a;->b(Lc/e/a/a/o/v;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ")"

    .line 12
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    return-object v0

    :cond_6
    :goto_1
    return-object v2
.end method

.method public static e(Lc/e/a/a/o/v;)V
    .locals 1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lc/e/a/a/o/v;->k()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public static f(Lc/e/a/a/o/v;)V
    .locals 3

    const/4 v0, 0x1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 1
    :goto_1
    invoke-virtual {p0}, Lc/e/a/a/o/v;->a()I

    move-result v2

    if-lez v2, :cond_2

    if-eqz v1, :cond_2

    .line 2
    invoke-static {p0}, Lc/e/a/a/k/h/a;->b(Lc/e/a/a/o/v;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lc/e/a/a/k/h/a;->a(Lc/e/a/a/o/v;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lc/e/a/a/k/h/d;Ljava/lang/String;)V
    .locals 6

    const-string v0, ""

    .line 43
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x5b

    .line 44
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    .line 45
    sget-object v4, Lc/e/a/a/k/h/a;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 46
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 47
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lc/e/a/a/k/h/d;->d(Ljava/lang/String;)V

    .line 48
    :cond_1
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_2
    const-string v0, "\\."

    .line 49
    invoke-static {p2, v0}, Lc/e/a/a/o/I;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 50
    aget-object v0, p2, v2

    const/16 v4, 0x23

    .line 51
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v1, :cond_3

    .line 52
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lc/e/a/a/k/h/d;->c(Ljava/lang/String;)V

    add-int/2addr v4, v3

    .line 53
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/e/a/a/k/h/d;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {p1, v0}, Lc/e/a/a/k/h/d;->c(Ljava/lang/String;)V

    .line 55
    :goto_0
    array-length v0, p2

    if-le v0, v3, :cond_4

    .line 56
    array-length v0, p2

    invoke-static {p2, v3, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Lc/e/a/a/k/h/d;->a([Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public c(Lc/e/a/a/o/v;)Lc/e/a/a/k/h/d;
    .locals 6

    .line 1
    iget-object v0, p0, Lc/e/a/a/k/h/a;->c:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2
    invoke-virtual {p1}, Lc/e/a/a/o/v;->c()I

    move-result v0

    .line 3
    invoke-static {p1}, Lc/e/a/a/k/h/a;->e(Lc/e/a/a/o/v;)V

    .line 4
    iget-object v2, p0, Lc/e/a/a/k/h/a;->b:Lc/e/a/a/o/v;

    iget-object v3, p1, Lc/e/a/a/o/v;->a:[B

    invoke-virtual {p1}, Lc/e/a/a/o/v;->c()I

    move-result p1

    invoke-virtual {v2, v3, p1}, Lc/e/a/a/o/v;->a([BI)V

    .line 5
    iget-object p1, p0, Lc/e/a/a/k/h/a;->b:Lc/e/a/a/o/v;

    invoke-virtual {p1, v0}, Lc/e/a/a/o/v;->e(I)V

    .line 6
    iget-object p1, p0, Lc/e/a/a/k/h/a;->b:Lc/e/a/a/o/v;

    iget-object v0, p0, Lc/e/a/a/k/h/a;->c:Ljava/lang/StringBuilder;

    invoke-static {p1, v0}, Lc/e/a/a/k/h/a;->d(Lc/e/a/a/o/v;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 7
    iget-object v2, p0, Lc/e/a/a/k/h/a;->b:Lc/e/a/a/o/v;

    iget-object v3, p0, Lc/e/a/a/k/h/a;->c:Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lc/e/a/a/k/h/a;->b(Lc/e/a/a/o/v;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 8
    :cond_0
    new-instance v2, Lc/e/a/a/k/h/d;

    invoke-direct {v2}, Lc/e/a/a/k/h/d;-><init>()V

    .line 9
    invoke-virtual {p0, v2, p1}, Lc/e/a/a/k/h/a;->a(Lc/e/a/a/k/h/d;Ljava/lang/String;)V

    move-object v3, v0

    const/4 p1, 0x0

    :goto_0
    const-string v4, "}"

    if-nez p1, :cond_4

    .line 10
    iget-object p1, p0, Lc/e/a/a/k/h/a;->b:Lc/e/a/a/o/v;

    invoke-virtual {p1}, Lc/e/a/a/o/v;->c()I

    move-result p1

    .line 11
    iget-object v3, p0, Lc/e/a/a/k/h/a;->b:Lc/e/a/a/o/v;

    iget-object v5, p0, Lc/e/a/a/k/h/a;->c:Ljava/lang/StringBuilder;

    invoke-static {v3, v5}, Lc/e/a/a/k/h/a;->b(Lc/e/a/a/o/v;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_3

    .line 13
    iget-object v5, p0, Lc/e/a/a/k/h/a;->b:Lc/e/a/a/o/v;

    invoke-virtual {v5, p1}, Lc/e/a/a/o/v;->e(I)V

    .line 14
    iget-object p1, p0, Lc/e/a/a/k/h/a;->b:Lc/e/a/a/o/v;

    iget-object v5, p0, Lc/e/a/a/k/h/a;->c:Ljava/lang/StringBuilder;

    invoke-static {p1, v2, v5}, Lc/e/a/a/k/h/a;->a(Lc/e/a/a/o/v;Lc/e/a/a/k/h/d;Ljava/lang/StringBuilder;)V

    :cond_3
    move p1, v4

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move-object v0, v2

    :cond_5
    :goto_3
    return-object v0
.end method
