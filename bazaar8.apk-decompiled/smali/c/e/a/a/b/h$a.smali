.class public final Lc/e/a/a/b/h$a;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lc/e/a/a/b/h$a;->a:Ljava/lang/String;

    .line 4
    iput p2, p0, Lc/e/a/a/b/h$a;->b:I

    .line 5
    iput p3, p0, Lc/e/a/a/b/h$a;->d:I

    .line 6
    iput p4, p0, Lc/e/a/a/b/h$a;->c:I

    .line 7
    iput p5, p0, Lc/e/a/a/b/h$a;->e:I

    .line 8
    iput p6, p0, Lc/e/a/a/b/h$a;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIIIILc/e/a/a/b/g;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lc/e/a/a/b/h$a;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method
