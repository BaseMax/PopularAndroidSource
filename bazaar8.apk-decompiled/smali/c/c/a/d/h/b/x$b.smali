.class public Lc/c/a/d/h/b/x$b;
.super Ljava/lang/Object;
.source "SpriteAnimatorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/d/h/b/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:[F

.field public b:Landroid/util/Property;

.field public c:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public final synthetic d:Lc/c/a/d/h/b/x;


# direct methods
.method public constructor <init>(Lc/c/a/d/h/b/x;[FLandroid/util/Property;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Landroid/util/Property;",
            "[TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/d/h/b/x$b;->d:Lc/c/a/d/h/b/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lc/c/a/d/h/b/x$b;->a:[F

    .line 3
    iput-object p3, p0, Lc/c/a/d/h/b/x$b;->b:Landroid/util/Property;

    .line 4
    iput-object p4, p0, Lc/c/a/d/h/b/x$b;->c:[Ljava/lang/Object;

    return-void
.end method
