.class public final Lcom/a/a/c/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/c/a/a/f$a;
    }
.end annotation


# static fields
.field public static final IMPORTANCE_CRASHED_THREAD:I = 0x4


# instance fields
.field public final frames:[Lcom/a/a/c/a/a/f$a;

.field public final importance:I

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(I[Lcom/a/a/c/a/a/f$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, v0, p1, p2}, Lcom/a/a/c/a/a/f;-><init>(Ljava/lang/String;I[Lcom/a/a/c/a/a/f$a;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Lcom/a/a/c/a/a/f$a;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/a/a/c/a/a/f;->name:Ljava/lang/String;

    .line 83
    iput p2, p0, Lcom/a/a/c/a/a/f;->importance:I

    .line 84
    iput-object p3, p0, Lcom/a/a/c/a/a/f;->frames:[Lcom/a/a/c/a/a/f$a;

    return-void
.end method
