.class public final Lc/e/a/a/k/h/g$a;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/k/h/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lc/e/a/a/k/h/g$a;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lc/e/a/a/k/h/g$a;->c:I

    .line 3
    iput-object p1, p0, Lc/e/a/a/k/h/g$a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lc/e/a/a/k/h/g$a;->d:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lc/e/a/a/k/h/g$a;->e:[Ljava/lang/String;

    return-void
.end method

.method public static a()Lc/e/a/a/k/h/g$a;
    .locals 4

    .line 12
    new-instance v0, Lc/e/a/a/k/h/g$a;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v0, v3, v1, v3, v2}, Lc/e/a/a/k/h/g$a;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Lc/e/a/a/k/h/g$a;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, " "

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move-object v0, v1

    :goto_0
    const-string v1, "\\."

    .line 6
    invoke-static {p0, v1}, Lc/e/a/a/o/I;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 7
    aget-object v1, p0, v2

    .line 8
    array-length v2, p0

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 9
    array-length v2, p0

    invoke-static {p0, v3, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    goto :goto_1

    .line 10
    :cond_2
    sget-object p0, Lc/e/a/a/k/h/g$a;->a:[Ljava/lang/String;

    .line 11
    :goto_1
    new-instance v2, Lc/e/a/a/k/h/g$a;

    invoke-direct {v2, v1, p1, v0, p0}, Lc/e/a/a/k/h/g$a;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object v2
.end method
