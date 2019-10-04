.class public Lb/b/a/A;
.super Ljava/lang/Object;
.source "AppCompatDialog.java"

# interfaces
.implements Lb/i/k/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/b/a/B;


# direct methods
.method public constructor <init>(Lb/b/a/B;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/b/a/A;->a:Lb/b/a/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/a/A;->a:Lb/b/a/B;

    invoke-virtual {v0, p1}, Lb/b/a/B;->a(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
