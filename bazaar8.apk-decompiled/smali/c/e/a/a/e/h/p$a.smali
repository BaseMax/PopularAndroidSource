.class public final Lc/e/a/a/e/h/p$a;
.super Ljava/lang/Object;
.source "H262Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/e/h/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field public static final a:[B


# instance fields
.field public b:Z

.field public c:I

.field public d:I

.field public e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lc/e/a/a/e/h/p$a;->a:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Lc/e/a/a/e/h/p$a;->e:[B

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lc/e/a/a/e/h/p$a;->b:Z

    .line 2
    iput v0, p0, Lc/e/a/a/e/h/p$a;->c:I

    .line 3
    iput v0, p0, Lc/e/a/a/e/h/p$a;->d:I

    return-void
.end method

.method public a([BII)V
    .locals 4

    .line 11
    iget-boolean v0, p0, Lc/e/a/a/e/h/p$a;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sub-int/2addr p3, p2

    .line 12
    iget-object v0, p0, Lc/e/a/a/e/h/p$a;->e:[B

    array-length v1, v0

    iget v2, p0, Lc/e/a/a/e/h/p$a;->c:I

    add-int v3, v2, p3

    if-ge v1, v3, :cond_1

    add-int/2addr v2, p3

    mul-int/lit8 v2, v2, 0x2

    .line 13
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/e/h/p$a;->e:[B

    .line 14
    :cond_1
    iget-object v0, p0, Lc/e/a/a/e/h/p$a;->e:[B

    iget v1, p0, Lc/e/a/a/e/h/p$a;->c:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iget p1, p0, Lc/e/a/a/e/h/p$a;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lc/e/a/a/e/h/p$a;->c:I

    return-void
.end method

.method public a(II)Z
    .locals 3

    .line 4
    iget-boolean v0, p0, Lc/e/a/a/e/h/p$a;->b:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 5
    iget v0, p0, Lc/e/a/a/e/h/p$a;->c:I

    sub-int/2addr v0, p2

    iput v0, p0, Lc/e/a/a/e/h/p$a;->c:I

    .line 6
    iget p2, p0, Lc/e/a/a/e/h/p$a;->d:I

    if-nez p2, :cond_0

    const/16 p2, 0xb5

    if-ne p1, p2, :cond_0

    .line 7
    iget p1, p0, Lc/e/a/a/e/h/p$a;->c:I

    iput p1, p0, Lc/e/a/a/e/h/p$a;->d:I

    goto :goto_0

    .line 8
    :cond_0
    iput-boolean v2, p0, Lc/e/a/a/e/h/p$a;->b:Z

    return v1

    :cond_1
    const/16 p2, 0xb3

    if-ne p1, p2, :cond_2

    .line 9
    iput-boolean v1, p0, Lc/e/a/a/e/h/p$a;->b:Z

    .line 10
    :cond_2
    :goto_0
    sget-object p1, Lc/e/a/a/e/h/p$a;->a:[B

    array-length p2, p1

    invoke-virtual {p0, p1, v2, p2}, Lc/e/a/a/e/h/p$a;->a([BII)V

    return v2
.end method
