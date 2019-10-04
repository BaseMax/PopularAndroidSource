.class public abstract Lf/a/a/g/d/a/t;
.super Lf/a/a/g/d/a/b;
.source "TargetedAction.java"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/g/d/a/b;-><init>()V

    .line 2
    iput-object p1, p0, Lf/a/a/g/d/a/t;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/d/a/t;->a:Ljava/lang/String;

    return-object v0
.end method
