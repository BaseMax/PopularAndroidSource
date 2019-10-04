.class public final Lc/e/a/a/B$d;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field public final a:Lc/e/a/a/Z;

.field public final b:I

.field public final c:J


# direct methods
.method public constructor <init>(Lc/e/a/a/Z;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/B$d;->a:Lc/e/a/a/Z;

    .line 3
    iput p2, p0, Lc/e/a/a/B$d;->b:I

    .line 4
    iput-wide p3, p0, Lc/e/a/a/B$d;->c:J

    return-void
.end method
