.class public Lb/x/u;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/x/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/x/w;


# direct methods
.method public constructor <init>(Lb/x/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/x/u;->a:Lb/x/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/x/u;->a:Lb/x/w;

    invoke-virtual {v0}, Lb/x/w;->e()V

    return-void
.end method
