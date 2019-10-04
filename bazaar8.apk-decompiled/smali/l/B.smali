.class public final Ll/B;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll/B$a;
    }
.end annotation


# static fields
.field public static final a:[C

.field public static final b:Ljava/util/regex/Pattern;


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Lj/D;

.field public e:Ljava/lang/String;

.field public f:Lj/D$a;

.field public final g:Lj/L$a;

.field public h:Lj/F;

.field public final i:Z

.field public j:Lj/G$a;

.field public k:Lj/A$a;

.field public l:Lj/O;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 1
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ll/B;->a:[C

    const-string v0, "(.*/)?(\\.|%2e|%2E){1,2}(/.*)?"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ll/B;->b:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lj/D;Ljava/lang/String;Lj/C;Lj/F;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll/B;->c:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Ll/B;->d:Lj/D;

    .line 4
    iput-object p3, p0, Ll/B;->e:Ljava/lang/String;

    .line 5
    new-instance p1, Lj/L$a;

    invoke-direct {p1}, Lj/L$a;-><init>()V

    iput-object p1, p0, Ll/B;->g:Lj/L$a;

    .line 6
    iput-object p5, p0, Ll/B;->h:Lj/F;

    .line 7
    iput-boolean p6, p0, Ll/B;->i:Z

    if-eqz p4, :cond_0

    .line 8
    iget-object p1, p0, Ll/B;->g:Lj/L$a;

    invoke-virtual {p1, p4}, Lj/L$a;->a(Lj/C;)Lj/L$a;

    :cond_0
    if-eqz p7, :cond_1

    .line 9
    new-instance p1, Lj/A$a;

    invoke-direct {p1}, Lj/A$a;-><init>()V

    iput-object p1, p0, Ll/B;->k:Lj/A$a;

    goto :goto_0

    :cond_1
    if-eqz p8, :cond_2

    .line 10
    new-instance p1, Lj/G$a;

    invoke-direct {p1}, Lj/G$a;-><init>()V

    iput-object p1, p0, Ll/B;->j:Lj/G$a;

    .line 11
    iget-object p1, p0, Ll/B;->j:Lj/G$a;

    sget-object p2, Lj/G;->e:Lj/F;

    invoke-virtual {p1, p2}, Lj/G$a;->a(Lj/F;)Lj/G$a;

    :cond_2
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 7
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x20

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_1

    const-string v4, " \"<>^`{}|\\?#"

    .line 8
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    if-nez p1, :cond_0

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x25

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 10
    :cond_1
    :goto_1
    new-instance v3, Lk/g;

    invoke-direct {v3}, Lk/g;-><init>()V

    .line 11
    invoke-virtual {v3, p0, v1, v2}, Lk/g;->a(Ljava/lang/String;II)Lk/g;

    .line 12
    invoke-static {v3, p0, v2, v0, p1}, Ll/B;->a(Lk/g;Ljava/lang/String;IIZ)V

    .line 13
    invoke-virtual {v3}, Lk/g;->t()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static a(Lk/g;Ljava/lang/String;IIZ)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_5

    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    if-eqz p4, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_4

    const/16 v2, 0xa

    if-eq v1, v2, :cond_4

    const/16 v2, 0xc

    if-eq v1, v2, :cond_4

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    goto :goto_3

    :cond_0
    const/16 v2, 0x20

    const/16 v3, 0x25

    if-lt v1, v2, :cond_2

    const/16 v2, 0x7f

    if-ge v1, v2, :cond_2

    const-string v2, " \"<>^`{}|\\?#"

    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    if-nez p4, :cond_1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_2

    if-ne v1, v3, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {p0, v1}, Lk/g;->c(I)Lk/g;

    goto :goto_3

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 17
    new-instance v0, Lk/g;

    invoke-direct {v0}, Lk/g;-><init>()V

    .line 18
    :cond_3
    invoke-virtual {v0, v1}, Lk/g;->c(I)Lk/g;

    .line 19
    :goto_2
    invoke-virtual {v0}, Lk/g;->d()Z

    move-result v2

    if-nez v2, :cond_4

    .line 20
    invoke-virtual {v0}, Lk/g;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 21
    invoke-virtual {p0, v3}, Lk/g;->writeByte(I)Lk/g;

    .line 22
    sget-object v4, Ll/B;->a:[C

    shr-int/lit8 v5, v2, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {p0, v4}, Lk/g;->writeByte(I)Lk/g;

    .line 23
    sget-object v4, Ll/B;->a:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {p0, v2}, Lk/g;->writeByte(I)Lk/g;

    goto :goto_2

    .line 24
    :cond_4
    :goto_3
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public a()Lj/L$a;
    .locals 5

    .line 30
    iget-object v0, p0, Ll/B;->f:Lj/D$a;

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Lj/D$a;->a()Lj/D;

    move-result-object v0

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Ll/B;->d:Lj/D;

    iget-object v1, p0, Ll/B;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lj/D;->e(Ljava/lang/String;)Lj/D;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 33
    :goto_0
    iget-object v1, p0, Ll/B;->l:Lj/O;

    if-nez v1, :cond_3

    .line 34
    iget-object v2, p0, Ll/B;->k:Lj/A$a;

    if-eqz v2, :cond_1

    .line 35
    invoke-virtual {v2}, Lj/A$a;->a()Lj/A;

    move-result-object v1

    goto :goto_1

    .line 36
    :cond_1
    iget-object v2, p0, Ll/B;->j:Lj/G$a;

    if-eqz v2, :cond_2

    .line 37
    invoke-virtual {v2}, Lj/G$a;->a()Lj/G;

    move-result-object v1

    goto :goto_1

    .line 38
    :cond_2
    iget-boolean v2, p0, Ll/B;->i:Z

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 39
    new-array v2, v2, [B

    invoke-static {v1, v2}, Lj/O;->a(Lj/F;[B)Lj/O;

    move-result-object v1

    .line 40
    :cond_3
    :goto_1
    iget-object v2, p0, Ll/B;->h:Lj/F;

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    .line 41
    new-instance v3, Ll/B$a;

    invoke-direct {v3, v1, v2}, Ll/B$a;-><init>(Lj/O;Lj/F;)V

    move-object v1, v3

    goto :goto_2

    .line 42
    :cond_4
    iget-object v3, p0, Ll/B;->g:Lj/L$a;

    invoke-virtual {v2}, Lj/F;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Content-Type"

    invoke-virtual {v3, v4, v2}, Lj/L$a;->a(Ljava/lang/String;Ljava/lang/String;)Lj/L$a;

    .line 43
    :cond_5
    :goto_2
    iget-object v2, p0, Ll/B;->g:Lj/L$a;

    .line 44
    invoke-virtual {v2, v0}, Lj/L$a;->a(Lj/D;)Lj/L$a;

    iget-object v0, p0, Ll/B;->c:Ljava/lang/String;

    .line 45
    invoke-virtual {v2, v0, v1}, Lj/L$a;->a(Ljava/lang/String;Lj/O;)Lj/L$a;

    return-object v2

    .line 46
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed URL. Base: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ll/B;->d:Lj/D;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Relative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ll/B;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lj/C;Lj/O;)V
    .locals 1

    .line 27
    iget-object v0, p0, Ll/B;->j:Lj/G$a;

    invoke-virtual {v0, p1, p2}, Lj/G$a;->a(Lj/C;Lj/O;)Lj/G$a;

    return-void
.end method

.method public a(Lj/G$b;)V
    .locals 1

    .line 28
    iget-object v0, p0, Ll/B;->j:Lj/G$a;

    invoke-virtual {v0, p1}, Lj/G$a;->a(Lj/G$b;)Lj/G$a;

    return-void
.end method

.method public a(Lj/O;)V
    .locals 0

    .line 29
    iput-object p1, p0, Ll/B;->l:Lj/O;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ll/B;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "Content-Type"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-static {p2}, Lj/F;->a(Ljava/lang/String;)Lj/F;

    move-result-object p1

    iput-object p1, p0, Ll/B;->h:Lj/F;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed content type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_0
    iget-object v0, p0, Ll/B;->g:Lj/L$a;

    invoke-virtual {v0, p1, p2}, Lj/L$a;->a(Ljava/lang/String;Ljava/lang/String;)Lj/L$a;

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 25
    iget-object p3, p0, Ll/B;->k:Lj/A$a;

    invoke-virtual {p3, p1, p2}, Lj/A$a;->b(Ljava/lang/String;Ljava/lang/String;)Lj/A$a;

    goto :goto_0

    .line 26
    :cond_0
    iget-object p3, p0, Ll/B;->k:Lj/A$a;

    invoke-virtual {p3, p1, p2}, Lj/A$a;->a(Ljava/lang/String;Ljava/lang/String;)Lj/A$a;

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Ll/B;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p2, p3}, Ll/B;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    .line 3
    iget-object v0, p0, Ll/B;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 4
    sget-object p3, Ll/B;->b:Ljava/util/regex/Pattern;

    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->matches()Z

    move-result p3

    if-nez p3, :cond_0

    .line 5
    iput-object p1, p0, Ll/B;->e:Ljava/lang/String;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "@Path parameters shouldn\'t perform path traversal (\'.\' or \'..\'): "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll/B;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Ll/B;->d:Lj/D;

    invoke-virtual {v1, v0}, Lj/D;->c(Ljava/lang/String;)Lj/D$a;

    move-result-object v0

    iput-object v0, p0, Ll/B;->f:Lj/D$a;

    .line 3
    iget-object v0, p0, Ll/B;->f:Lj/D$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Ll/B;->e:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Malformed URL. Base: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Ll/B;->d:Lj/D;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", Relative: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Ll/B;->e:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 6
    iget-object p3, p0, Ll/B;->f:Lj/D$a;

    invoke-virtual {p3, p1, p2}, Lj/D$a;->a(Ljava/lang/String;Ljava/lang/String;)Lj/D$a;

    goto :goto_1

    .line 7
    :cond_2
    iget-object p3, p0, Ll/B;->f:Lj/D$a;

    invoke-virtual {p3, p1, p2}, Lj/D$a;->b(Ljava/lang/String;Ljava/lang/String;)Lj/D$a;

    :goto_1
    return-void
.end method
