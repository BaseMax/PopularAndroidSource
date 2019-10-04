.class public interface abstract Lb/H/i;
.super Ljava/lang/Object;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/H/i$a;
    }
.end annotation


# static fields
.field public static final a:Lb/H/i$a$c;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation
.end field

.field public static final b:Lb/H/i$a$b;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb/H/i$a$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/H/i$a$c;-><init>(Lb/H/h;)V

    sput-object v0, Lb/H/i;->a:Lb/H/i$a$c;

    .line 2
    new-instance v0, Lb/H/i$a$b;

    invoke-direct {v0, v1}, Lb/H/i$a$b;-><init>(Lb/H/h;)V

    sput-object v0, Lb/H/i;->b:Lb/H/i$a$b;

    return-void
.end method
