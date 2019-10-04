.class public Lb/D/J;
.super Lb/D/F;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/D/K;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/D/E;

.field public final synthetic b:Lb/D/K;


# direct methods
.method public constructor <init>(Lb/D/K;Lb/D/E;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/D/J;->b:Lb/D/K;

    iput-object p2, p0, Lb/D/J;->a:Lb/D/E;

    invoke-direct {p0}, Lb/D/F;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lb/D/E;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/D/J;->a:Lb/D/E;

    invoke-virtual {v0}, Lb/D/E;->s()V

    .line 2
    invoke-virtual {p1, p0}, Lb/D/E;->b(Lb/D/E$c;)Lb/D/E;

    return-void
.end method
