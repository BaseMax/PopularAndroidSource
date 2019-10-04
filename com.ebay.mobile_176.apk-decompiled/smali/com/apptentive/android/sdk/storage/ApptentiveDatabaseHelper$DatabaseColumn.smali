.class final Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;
.super Ljava/lang/Object;
.source "ApptentiveDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DatabaseColumn"
.end annotation


# instance fields
.field final index:I

.field public final name:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    iput p1, p0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->index:I

    .line 637
    iput-object p2, p0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->name:Ljava/lang/String;

    return-object v0
.end method
