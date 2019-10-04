.class public Lcab/snapp/snappdialog/TestActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 11
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    sget p1, Lcab/snapp/snappdialog/a$f;->activity_test:I

    invoke-virtual {p0, p1}, Lcab/snapp/snappdialog/TestActivity;->setContentView(I)V

    return-void
.end method
