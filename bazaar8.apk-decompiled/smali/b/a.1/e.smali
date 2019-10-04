.class public final Lb/a/e;
.super Lb/a/d;
.source "OnBackPressedDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/f;->a(Landroidx/activity/OnBackPressedDispatcher;Lb/r/k;ZLh/f/a/b;)Lb/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lh/f/a/b;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Lh/f/a/b;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/e;->c:Lh/f/a/b;

    iput-boolean p2, p0, Lb/a/e;->d:Z

    invoke-direct {p0, p3}, Lb/a/d;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/e;->c:Lh/f/a/b;

    invoke-interface {v0, p0}, Lh/f/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
