.class public Lb/H/a/a/b/f$c;
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
    name = "c"
.end annotation


# instance fields
.field public final a:Lb/H/a/a/b/f;


# direct methods
.method public constructor <init>(Lb/H/a/a/b/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/H/a/a/b/f$c;->a:Lb/H/a/a/b/f;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/H/a/a/b/f$c;->a:Lb/H/a/a/b/f;

    invoke-virtual {v0}, Lb/H/a/a/b/f;->b()V

    return-void
.end method
