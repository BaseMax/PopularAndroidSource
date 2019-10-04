.class public final Lc/e/a/a/e/c/c$a;
.super Ljava/lang/Object;
.source "DefaultEbmlReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/e/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lc/e/a/a/e/c/c$a;->a:I

    .line 4
    iput-wide p2, p0, Lc/e/a/a/e/c/c$a;->b:J

    return-void
.end method

.method public synthetic constructor <init>(IJLc/e/a/a/e/c/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lc/e/a/a/e/c/c$a;-><init>(IJ)V

    return-void
.end method

.method public static synthetic a(Lc/e/a/a/e/c/c$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/a/e/c/c$a;->b:J

    return-wide v0
.end method

.method public static synthetic b(Lc/e/a/a/e/c/c$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/e/a/a/e/c/c$a;->a:I

    return p0
.end method
