.class public Lb/z/j$d;
.super Lb/z/j$b;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/z/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field public final b:Lb/z/j;

.field public final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lb/z/j$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/z/j;Lb/z/j$b;)V
    .locals 1

    .line 1
    iget-object v0, p2, Lb/z/j$b;->a:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lb/z/j$b;-><init>([Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lb/z/j$d;->b:Lb/z/j;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lb/z/j$d;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/z/j$d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/z/j$b;

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lb/z/j$d;->b:Lb/z/j;

    invoke-virtual {p1, p0}, Lb/z/j;->c(Lb/z/j$b;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lb/z/j$b;->a(Ljava/util/Set;)V

    :goto_0
    return-void
.end method
