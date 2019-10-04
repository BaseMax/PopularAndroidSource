.class public Lb/H/a/a/b/f$a;
.super Ljava/lang/Object;
.source "SystemAlarmDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/H/a/a/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public final a:Lb/H/a/a/b/f;

.field public final b:Landroid/content/Intent;

.field public final c:I


# direct methods
.method public constructor <init>(Lb/H/a/a/b/f;Landroid/content/Intent;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/H/a/a/b/f$a;->a:Lb/H/a/a/b/f;

    .line 3
    iput-object p2, p0, Lb/H/a/a/b/f$a;->b:Landroid/content/Intent;

    .line 4
    iput p3, p0, Lb/H/a/a/b/f$a;->c:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/H/a/a/b/f$a;->a:Lb/H/a/a/b/f;

    iget-object v1, p0, Lb/H/a/a/b/f$a;->b:Landroid/content/Intent;

    iget v2, p0, Lb/H/a/a/b/f$a;->c:I

    invoke-virtual {v0, v1, v2}, Lb/H/a/a/b/f;->a(Landroid/content/Intent;I)Z

    return-void
.end method
