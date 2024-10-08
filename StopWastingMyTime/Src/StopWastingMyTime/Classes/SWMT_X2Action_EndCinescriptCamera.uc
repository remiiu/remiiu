// Remove the delay from every ability that has an ExtraAbilityEndDelay (which is most of them)

class SWMT_X2Action_EndCinescriptCamera extends X2Action_EndCinescriptCamera;

simulated state Executing
{
Begin:
    `CAMERASTACK.RemoveCamera(CinescriptCamera);

    //if (!bForceEndImmediately && !bNewUnitSelected)
    //{
        //Sleep(CinescriptCamera.CameraDefinition.ExtraAbilityEndDelay);
    //}

    CompleteAction();
}
