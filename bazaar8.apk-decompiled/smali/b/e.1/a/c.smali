.class public Lb/e/a/c;
.super Lb/e/a/f;
.source "CardViewApi17Impl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/e/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    new-instance v0, Lb/e/a/b;

    invoke-direct {v0, p0}, Lb/e/a/b;-><init>(Lb/e/a/c;)V

    sput-object v0, Lb/e/a/j;->b:Lb/e/a/j$a;

    return-void
.end method
