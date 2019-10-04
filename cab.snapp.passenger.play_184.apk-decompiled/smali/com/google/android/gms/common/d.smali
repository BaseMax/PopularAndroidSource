.class public final Lcom/google/android/gms/common/d;
.super Lcom/google/android/gms/common/e;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/e;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    iput p1, p0, Lcom/google/android/gms/common/d;->a:I

    return-void
.end method


# virtual methods
.method public final getConnectionStatusCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/d;->a:I

    return v0
.end method
