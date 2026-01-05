-- Allow users to update their own shared reports (for extending expiry)
CREATE POLICY "Users can update their own shared reports"
ON public.shared_reports
FOR UPDATE
USING (auth.uid() = user_id)
WITH CHECK (auth.uid() = user_id);