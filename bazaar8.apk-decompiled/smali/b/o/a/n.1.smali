.class public abstract Lb/o/a/n;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/o/a/n$b;,
        Lb/o/a/n$c;,
        Lb/o/a/n$a;
    }
.end annotation


# static fields
.field public static final a:Lb/o/a/l;


# instance fields
.field public b:Lb/o/a/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb/o/a/l;

    invoke-direct {v0}, Lb/o/a/l;-><init>()V

    sput-object v0, Lb/o/a/n;->a:Lb/o/a/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb/o/a/n;->b:Lb/o/a/l;

    return-void
.end method


# virtual methods
.method public abstract a(I)Landroidx/fragment/app/Fragment;
.end method

.method public abstract a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
.end method

.method public abstract a()Lb/o/a/C;
.end method

.method public abstract a(II)V
.end method

.method public a(Lb/o/a/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/o/a/n;->b:Lb/o/a/l;

    return-void
.end method

.method public abstract a(Ljava/lang/String;I)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public b()Lb/o/a/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/o/a/n;->b:Lb/o/a/l;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lb/o/a/n;->a:Lb/o/a/l;

    iput-object v0, p0, Lb/o/a/n;->b:Lb/o/a/l;

    .line 3
    :cond_0
    iget-object v0, p0, Lb/o/a/n;->b:Lb/o/a/l;

    return-object v0
.end method

.method public abstract c()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()Landroidx/fragment/app/Fragment;
.end method

.method public abstract e()Z
.end method

.method public abstract f()Z
.end method
